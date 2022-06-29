class Goods {
  String title;
  String price;
  String description;
  List<String> image;
  String rate;
  String owner;
  List<String> colors;
  List<String> sizes;
  Map <String,dynamic>? comments;

  Goods(
      {required this.title,
        required this.price,
        required this.description,
        required this.image,
        required this.rate,
        required this.owner,
        required this.colors,
        required this.sizes,
        this.comments
      });
}