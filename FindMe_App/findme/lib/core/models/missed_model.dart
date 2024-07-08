class MissedModel {
  final String name,
      age,
      gender,
      dataMissed,
      address,
      phone,
      imageUrl,
      number;
  final String? notes;
  MissedModel(
      {required this.name,
      required this.age,
      required this.gender,
      required this.dataMissed,
      required this.address,
      required this.phone,
      required this.imageUrl,
      required this.number,
      this.notes});

  factory MissedModel.fromJson({required Map<String, dynamic> json}) {
    return MissedModel(
      name: json['name'],
      imageUrl: json['imageUrl'],
      age: json['age'],
      gender: json['gender'],
      dataMissed: json['dataMissed'],
      address: json['address'],
      phone: json['phone'],
      number: json['number'],
      notes: json['notes'],
    );
  }
}
