class Goods {
  String title;
  String price;
  String description;
  List<dynamic> image;
  String rate;
  String owner;
  String ownerNickName;
  List<dynamic> colors;
  List<dynamic> sizes;
  Map<String, dynamic>? comments;

  Goods({
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.rate,
    required this.owner,
    required this.colors,
    required this.sizes,
    this.comments,
    required this.ownerNickName,
  });
}
