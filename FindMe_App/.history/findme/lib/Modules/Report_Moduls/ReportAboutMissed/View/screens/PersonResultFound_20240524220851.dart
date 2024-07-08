import 'package:flutter/material.dart';

class PersonResultFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Close Button
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    // Close action
                  },
                ),
              ),
              // Image
              // Container(
              //   width: 100,
              //   height: 100,
              //   child: Image.asset('assets/images/face_scan.png'), // replace with your asset image path
              // ),
              SizedBox(height: 20),
              // Title Text
              Text(
                'تمكنا من الوصول لبعض المعثور عليهم المشابهين للمفقود',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              // Subtitle Text
              Text(
                'نرجوا منك إدخال رقمك القومي لكي نتمكن من رؤية النتائج',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              // National ID TextField
              TextField(
                decoration: InputDecoration(
                  hintText: 'الرقم القومي',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              // Continue Button
              ElevatedButton(
                onPressed: () {
                  // Continue action import 'package:flutter/material.dart';

class ShowFoundedPersonDetails extends StatelessWidget {
  const ShowFoundedPersonDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('معثور عليهم'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pexels.com%2Fphoto%2F9374697%2F&psig=AOvVaw34qC15X1iY6wX92q5296z9&ust=1680246070729000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCID6q5j69_oCFQAAAAAdAAAAABAD',
                          ),
                        ),
                        const SizedBox(width: 16.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'أحمد شحاتة',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'الدقهلية - المنصورة - شارع جيهان',
                                style: TextStyle(fontSize: 14.0),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text('المزيد'),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        '16/3/2022 تاريخ العثور',
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: Container(),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                padding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 32.0,
                ),
                textStyle: const TextStyle(fontSize: 16.0),
              ),
              child: const Text('لم تجد المفقود في المعثور عليهم !'),
            ),
          ],
        ),
      ),
    );
  }
}
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  primary: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text(
                  'متابعة',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PersonResultFound(),
  ));
}
