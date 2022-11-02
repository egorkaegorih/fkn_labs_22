import 'package:flutter/material.dart';
import 'package:newapp/heroes.dart';
import 'package:newapp/main.dart';

class HeroesCard extends StatelessWidget {
  final Heroes _heroes;

  HeroesCard(this._heroes);

  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: _heroes.name,
        child: Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            margin: const EdgeInsets.all(15),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(_heroes.pathImage),
                      fit: BoxFit.fitHeight),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 40),
                        child: Text(
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                            _heroes.name),
                      )
                    ]))));
  }
}
