import 'package:flutter/material.dart';

class Heroes {
  String name;
  String pathImage;
  Color color;

  Heroes(this.name, this.pathImage, this.color);
}

final List<Heroes> marvelHeroes = [
  Heroes("Deadpool", "assets/deadpool.jpg", Colors.orange),
  Heroes("Iron Man", "assets/iron_man.png", Colors.blue),
  Heroes("Captian America", "assets/capamerica.jpg", Colors.red),
  Heroes("Spiderman", "assets/spiderman.jpg", Colors.green),
  Heroes("Doctor Strange", "assets/doctor_strange.jpg", Colors.purple),
  Heroes("Thor", "assets/thor.jpg", Colors.indigo),
  Heroes("Thanos", "assets/thanos.jpg", Colors.yellow)
];
