class BookModel {
  final String title;
  final String image;
  final num rate;
  final num price;
  final num numOfRates;
  final String author;

  BookModel({
    required this.title,
    required this.image,
    required this.rate,
    required this.price,
    required this.numOfRates,
    required this.author,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      title: json['title'] ?? '',
      image: json['image'] ?? '',
      rate: (json['rate'] ?? 0),
      price: (json['price'] ?? 0),
      numOfRates: json['numOfRates'] ?? 0,
      author: json['author'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'image': image,
      'rate': rate,
      'price': price,
      'numOfRates': numOfRates,
      'author': author,
    };
  }
}
