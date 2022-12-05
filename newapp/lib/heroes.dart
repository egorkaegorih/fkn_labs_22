class Heroes {
  final String name;
  final String info;
  final String pathImage;

  Heroes({required this.name, required this.info, required this.pathImage});

  factory Heroes.fromJson(Map<String, dynamic> response) {
    String urlImg = response['thumbnail']['path'] +
        "." +
        response['thumbnail']['extension'];

    return Heroes(
      name: response['name'].toString(),
      info: response['description'].toString(),
      pathImage: urlImg,
    );
  }
}
