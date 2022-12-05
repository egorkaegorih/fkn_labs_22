import 'package:dio/dio.dart';

import 'heroes.dart';

const publicKey = "39677b7301cded1731f26bb4c2482346";
const hash = "7383efd0ac1d5a9421384a49082ff1bb";

class MarvelApi {
  Future<List<int>> getIdHeroes(int count) async {
    List<int> idHeroes = [];
    String url = "https://gateway.marvel.com:443/v1/public/characters?";

    try {
      Response response = await Dio().get(url, queryParameters: {
        "ts": 0,
        "apikey": publicKey,
        "hash": hash,
        "limit": count
      });

      for (var dataHero in response.data["data"]["results"]) {
        idHeroes.add(dataHero["id"]);
      }

      return idHeroes;
    } catch (e) {
      throw Exception("Не удалось получить список героев");
    }
  }

  Future<Heroes> getInfoHeroes(int id) async {
    String url =
        "https://gateway.marvel.com:443/v1/public/characters/${id.toString()}?";

    try {
      Response response = await Dio().get(url,
          queryParameters: {"ts": 0, "apikey": publicKey, "hash": hash});

      return Heroes.fromJson(response.data["data"]["results"][0]);
    } catch (e) {
      throw Exception("Не удалось загрузить героя");
    }
  }
}
