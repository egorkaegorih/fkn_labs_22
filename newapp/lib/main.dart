import 'package:flutter/material.dart';
import 'provider_background_color.dart';

import 'package:provider/provider.dart';
import 'background_triangle.dart';
import 'slider_heroes.dart';

void main() => runApp(MarvelHeroesApp());

class MarvelHeroesApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StateHeroesApp();
  }
}

class StateHeroesApp extends State<MarvelHeroesApp> {
  Color colorTriangle = Colors.green;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color.fromARGB(255, 42, 38, 43),
            body: ChangeNotifierProvider<ProviderBackgroundColor>(
              create: (context) => ProviderBackgroundColor(),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  BackgroundTriangle(),
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
                        ),
                        Expanded(
                          child: SliderHeroes(),
                        ),
                      ]))
                ],
              ),
            )));
  }
}
