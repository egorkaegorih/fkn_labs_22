class Heroes {
  final String name;
  final String info;
  final String pathImage;

  Heroes({required this.name, required this.info, required this.pathImage});

  factory Heroes.fromJson(Map<String, dynamic> response) {
    var urlImg = response['thumbnail']['path'] +
        "." +
        response['thumbnail']['extension'];

    return Heroes(
      name: response['name'] as String,
      info: response['description'] as String,
      pathImage: urlImg,
    );
  }
}
