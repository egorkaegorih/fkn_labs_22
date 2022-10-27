import 'package:flutter/material.dart';

void main() => runApp(Marvel_Heroes_App());

class Marvel_Heroes_App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return State_Heroes_App();
  }
}

class State_Heroes_App extends State<Marvel_Heroes_App> {
  List<String> Name_heroes = [
    "Deadpool",
    "Iron Man",
    "Captian America",
    "Spiderman",
    "Doctor Strange",
    "Thor",
    "Thanos"
  ];
  List<String> Path_image_heroes = [
    "assets/deadpool.jpg",
    "assets/iron_man.png",
    "assets/capamerica.jpg",
    "assets/spiderman.jpg",
    "assets/doctor_strange.jpg",
    "assets/thor.jpg",
    "assets/thanos.jpg"
  ];

  final PageController controller =
      PageController(initialPage: 0, viewportFraction: 0.80);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 42, 38, 43),
            body: Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.symmetric(vertical: 25),
                child: Column(children: [
                  Image.asset(
                    "assets/marvel_logo.png",
                    height: 50,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30, bottom: 15),
                    child: Text(
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        "Choose your hero"),
                  ),
                  Expanded(
                    child: PageView.builder(
                      controller: controller,
                      itemCount: Name_heroes.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            margin: EdgeInsets.all(15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage(Path_image_heroes[index]),
                                      fit: BoxFit.fitHeight),
                                ),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Container(),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 25, vertical: 40),
                                        child: Text(
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold),
                                            Name_heroes[index]),
                                      )
                                    ])));
                      },
                    ),
                  ),
                ]))));
  }
}
