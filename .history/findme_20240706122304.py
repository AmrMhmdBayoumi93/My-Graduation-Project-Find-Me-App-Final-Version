import os
import io
from flask import Flask, request, jsonify
from PIL import Image
import cv2
import numpy as np
from sklearn.metrics.pairwise import cosine_similarity
from facenet_pytorch import MTCNN, InceptionResnetV1
import firebase_admin
from firebase_admin import credentials, storage





app = Flask(__name__)

# Initialize Firebase Admin SDK
                                                            //D:\IMPORTANT_CODES\Run-track-code\findme_fourth_versionMD:\IMPORTANT_CODES\Run-track-code\findme_fourth_versionMD:\IMPORTANT_CODES\Run-track-code\findme_fourth_versionMD:\IMPORTANT_CODES\Run-track-code\findme_fourth_versionM
cred = credentials.Certificate( r'D:/IMPORTANT_CODES/Run-track-code/findme_fourth_versionM/findme-938c1-firebase-adminsdk-z4fbr-bd6c91da14.json')
firebase_admin.initialize_app(cred, {
    'storageBucket': 'findme-938c1.appspot.com'
})
bucket = storage.bucket()

# Initialize MTCNN for face detection and InceptionResnet for face embedding
mtcnn = MTCNN()
resnet = InceptionResnetV1(pretrained='vggface2').eval()

SIMILARITY_THRESHOLD = 0.7  # Define a threshold for matching similarity

def extract_face_embeddings(image):
    image_rgb = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)
    faces = mtcnn(image_rgb, save_path=None)

    if faces is None:
        return None

    faces = faces.unsqueeze(0)
    embeddings = resnet(faces)
    return embeddings.detach().numpy()


def compare_faces(input_embeddings, database_embeddings):
    similarities = {}
    input_embeddings = input_embeddings.squeeze(0)

    for filename, embeddings in database_embeddings.items():
        embeddings = embeddings.squeeze(0)
        similarity = cosine_similarity([input_embeddings], [embeddings])[0][0]
        similarities[filename] = float(similarity)

    return similarities


def load_image_from_firebase(file_path):
    blob = bucket.blob(file_path)
    image_data = blob.download_as_bytes()
    image = np.array(Image.open(io.BytesIO(image_data)))
    return image


def list_files_in_firebase_storage(directory=""):
    blobs = bucket.list_blobs(prefix=directory)
    return [blob.name for blob in blobs if not blob.name.endswith('/')]


@app.route('/upload', methods=['POST'])
def upload_image():
    if 'file' not in request.files:
        return jsonify({"error": "No file part"}), 400

    file = request.files['file']
    if file.filename == '':
        return jsonify({"error": "No selected file"}), 400

    if file:
        input_image = Image.open(file.stream)
        input_image = cv2.cvtColor(np.array(input_image), cv2.COLOR_RGB2BGR)

        input_embeddings = extract_face_embeddings(input_image)
        if input_embeddings is None:
            return jsonify({"error": "No face detected in the input image."}), 400

        # Search from the root directory instead of a specific folder
        database_embeddings = {}
        for filename in list_files_in_firebase_storage():
            image = load_image_from_firebase(filename)
            embeddings = extract_face_embeddings(image)
            if embeddings is not None:
                database_embeddings[filename] = embeddings

        if not database_embeddings:
            return jsonify({"error": "No faces detected in the database directory."}), 400

        similarities = compare_faces(input_embeddings, database_embeddings)
        sorted_similarities = sorted(similarities.items(), key=lambda item: item[1], reverse=True)

        # Determine if a match is found
        best_match_filename, best_match_score = sorted_similarities[0]
        match_found = best_match_score >= SIMILARITY_THRESHOLD

        return jsonify({
            "match_found": match_found,
            "best_match": {
                "filename": best_match_filename,
                "similarity": best_match_score
            },
            "all_similarities": sorted_similarities
        })
                    

if __name__ == '__main__':
    app.run(debug=True)