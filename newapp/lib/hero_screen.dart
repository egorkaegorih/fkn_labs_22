import 'package:flutter/material.dart';

import 'heroes.dart';

import 'package:cached_network_image/cached_network_image.dart';

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
            CachedNetworkImage(
              imageUrl: _hero.pathImage,
              fit: BoxFit.cover,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(
                Icons.error,
                color: Colors.red,
              ),
            ),
            const Positioned(
                top: 35,
                left: 10,
                child: BackButton(
                  color: Colors.white,
                )),
            Positioned(
                bottom: 10,
                left: 10,
                right: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        _hero.name,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      _hero.info,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ))
          ],
        )));
  }
}
