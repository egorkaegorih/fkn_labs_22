import 'package:flutter/material.dart';

import 'heroes.dart';

class HeroScreen extends StatelessWidget {
  final Heroes _hero;

  HeroScreen(this._hero);

  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: _hero.name,
        child: Scaffold(
          body: Stack(
            fit: StackFit.expand,
            children: [
              Image.network(
                _hero.pathImage,
                fit: BoxFit.cover,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      child: BackButton(
                        color: Colors.white,
                      )),
                  Expanded(child: Container()),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              _hero.name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            _hero.info,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ))
                ],
              )
            ],
          ),
        ));
  }
}
