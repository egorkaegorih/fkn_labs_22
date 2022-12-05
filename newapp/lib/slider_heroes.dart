import 'package:flutter/material.dart';
import 'marvel_api.dart';
import 'provider_background_color.dart';
import 'package:provider/provider.dart';

import 'heroes.dart';
import 'heroes_card.dart';

class SliderHeroes extends StatelessWidget {
  final PageController controller =
      PageController(initialPage: 0, viewportFraction: 0.80);

  Future<List<Heroes>> getListHeroes(count) async {
    List<int> listId = await MarvelApi().getIdHeroes(5);
    List<Heroes> listHero = [];
    for (int i = 0; i < listId.length; i++) {
      var hero = await MarvelApi().getInfoHeroes(listId[i]);

      listHero.add(hero);
    }
    return listHero;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getListHeroes(5),
        builder: (context, listHeroes) {
          if (listHeroes.hasData) {
            return PageView.builder(
                controller: controller,
                itemCount: listHeroes.data!.length,
                onPageChanged: (indexMainHero) {
                  Provider.of<ProviderBackgroundColor>(context, listen: false)
                      .setActivColor(listHeroes.data![indexMainHero].pathImage);
                },
                itemBuilder: (context, index) {
                  return HeroesCard(listHeroes.data![index]);
                });
          }
          if (listHeroes.hasError) {
            return Padding(
                padding: const EdgeInsets.all(10),
                child: Center(
                    child: Text(
                  listHeroes.error.toString(),
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                )));
          }
          return const Center(
              child: CircularProgressIndicator(
            color: Colors.orange,
          ));
        });
  }
}
