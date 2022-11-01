import 'package:flutter/material.dart';

import 'heroes.dart';
import 'heroes_card.dart';

void main() => runApp(MarvelHeroesApp());

class MarvelHeroesApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StateHeroesApp();
  }
}

class StateHeroesApp extends State<MarvelHeroesApp> {
  Color colorTriangle = Colors.green;

  final PageController controller =
      PageController(initialPage: 0, viewportFraction: 0.80);

  Widget backgroundTriangle() {
    return CustomPaint(
        size: Size(200, 200), painter: DrawTriangle(colorTriangle));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color.fromARGB(255, 42, 38, 43),
            body: Stack(
              fit: StackFit.expand,
              children: [
                backgroundTriangle(),
                Container(
                    alignment: Alignment.topCenter,
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Column(children: [
                      Image.asset(
                        "assets/marvel_logo.png",
                        height: 50,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 30, bottom: 15),
                        child: Text(
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            "Choose your hero"),
                      )
                      //Реализация Списка героев
                      ,
                      Expanded(
                        child: PageView.builder(
                          controller: controller,
                          itemCount: marvelHeroes.length,
                          onPageChanged: (IndexMainHero) => setState(() {
                            colorTriangle = marvelHeroes[IndexMainHero].color;
                          }),
                          itemBuilder: (BuildContext context, int index) {
                            return HeroesCard(marvelHeroes[index]);
                          },
                        ),
                      ),
                    ]))
              ],
            )));
  }
}

class DrawTriangle extends CustomPainter {
  final Color colorTriangle;

  DrawTriangle(this.colorTriangle);

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.moveTo(size.width, size.width);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.close();
    canvas.drawPath(path, Paint()..color = colorTriangle);
  }

  @override
  bool shouldRepaint(DrawTriangle oldDelegate) {
    return colorTriangle != oldDelegate.colorTriangle;
  }
}
