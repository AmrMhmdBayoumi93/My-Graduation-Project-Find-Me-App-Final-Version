class FoundModel {
  final String imageUrl, address, phone, name, date;

  FoundModel({
    required this.imageUrl,
    required this.address,
    required this.phone,
    required this.name,
    required this.date,
  });
  factory FoundModel.fromJson({required Map<String, dynamic> json}) {
    return FoundModel(
      imageUrl: json['imageUrl'],
      address: json['address'],
      phone: json['phone'],
      name: json['name'],
      date: json['date'],
    );
  }
}
