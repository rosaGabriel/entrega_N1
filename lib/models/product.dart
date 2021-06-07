class Product {
  final String name;
  final String description;
  final String photo;
  final String value;
  final String valueParcelated;
  bool isFavorite;

  Product({
    required this.name,
    required this.description,
    required this.photo,
    required this.value,
    required this.valueParcelated,
    this.isFavorite = false,
  });
}
