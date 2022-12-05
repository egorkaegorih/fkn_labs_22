import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'hero_screen.dart';
import 'heroes.dart';

class HeroesCard extends StatelessWidget {
  final Heroes _heroes;

  HeroesCard(this._heroes);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => HeroScreen(_heroes)));
      },
      child: Hero(
          tag: _heroes.name,
          child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              margin: const EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Stack(fit: StackFit.expand, children: [
                CachedNetworkImage(
                  imageUrl: _heroes.pathImage,
                  fit: BoxFit.cover,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(
                    Icons.error,
                    color: Colors.red,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Text(
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                      _heroes.name),
                )
              ]))),
    );
  }
}
