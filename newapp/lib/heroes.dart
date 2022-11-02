import 'package:flutter/material.dart';

class Heroes {
  String name;
  String info;
  String pathImage;
  Color color;

  Heroes(this.name, this.info, this.pathImage, this.color);
}

final List<Heroes> marvelHeroes = [
  Heroes(
      "Deadpool",
      "Please don't make the super suit green... or animated!",
      "https://downloader.disk.yandex.ru/preview/09dd57ab233e87a9a55287f44c37091ada7ba9a6c5254c9125bcb93cd7b6fccf/6362d0b5/ad49y7M0R-9s1oMfvYqnoMQO6C7BNEyiDRDtopQ5LvcPC-aszw-xwdnjI0GS9YiQyLVSFOSYj7z-xDGYKZG4xw%3D%3D?uid=0&filename=deadpool.jpg&disposition=inline&hash=&limit=0&content_type=image%2Fjpeg&owner_uid=0&tknv=v2&size=2048x2048",
      Colors.orange),
  Heroes(
      "Iron Man",
      "I am Iron man",
      "https://downloader.disk.yandex.ru/preview/41f4896a2fc0fbc5429d64bc21843f8b98db8d458e1b1b3b335d6dbcacfb6314/6362d138/uYDDvC93UQspJbNomNVnyMQO6C7BNEyiDRDtopQ5LveJtSmYfgBscQsJgGtjtgP5kdvXoD6jawPu40WjqqOfHQ%3D%3D?uid=0&filename=iron_man.png&disposition=inline&hash=&limit=0&content_type=image%2Fpng&owner_uid=0&tknv=v2&size=2048x2048",
      Colors.blue),
  Heroes(
      "Captian America",
      "I can do this all day.",
      "https://downloader.disk.yandex.ru/preview/0235dd93a56f4b4883e0c088fd9e6b7b6da91eb2b9161b14e6b6d707693436d0/6362d079/4sMhVZEBzgu7qXihK-19KLzYGxLwqW-o1EkZN3JFhCweK1uOXGfzZgtuOkNpZQqaPGzff2CRI_eMeRSM-IWVkA%3D%3D?uid=0&filename=capamerica.jpg&disposition=inline&hash=&limit=0&content_type=image%2Fjpeg&owner_uid=0&tknv=v2&size=2048x2048",
      Colors.red),
  Heroes(
      "Spiderman",
      "When you can do the things that I can, but you don't, and then the bad things happen...",
      "https://downloader.disk.yandex.ru/preview/21b4a66684fbcbad7fe446a34fcb30b6e3b61c88dd57a9e7d8eabab4c67dae0f/6362d156/8Fw2JthtSynCQy7pRNI-HRUTle83O5FYd8J8VsQd89ZBXAuB5LBGV7gfmqx0hnxKBIAu_xuSHhMVEnqoQTrpHA%3D%3D?uid=0&filename=spiderman.jpg&disposition=inline&hash=&limit=0&content_type=image%2Fjpeg&owner_uid=0&tknv=v2&size=2048x2048",
      Colors.green),
  Heroes(
      "Doctor Strange",
      "End your assault on my world. Never come back. Do it and I'll break the loop.",
      "https://downloader.disk.yandex.ru/preview/71c3525bbd2d149a9ae0513a57f57e9e3bba98a3830c0da7d00593de4e47cd96/6362d0ed/K9jAbtmOuOo8Ei3P262nZMQO6C7BNEyiDRDtopQ5Lvd3_SxPjAlPIIm1v_PfeqLmSzXj8X7KXRwl25PNF_bs1g%3D%3D?uid=0&filename=doctor_strange.jpg&disposition=inline&hash=&limit=0&content_type=image%2Fjpeg&owner_uid=0&tknv=v2&size=2048x2048",
      Colors.purple),
  Heroes(
      "Thor",
      "I choose to run towards my problems and not away from them. Because that's what heroes do.",
      "https://downloader.disk.yandex.ru/preview/0c84a9b019b6dc54a0152eb89cf02ab34c5bc3d4a6fd3e4e1e73fc3cc57acec6/6362d17f/DK3nh_b2O2IeO8eWI6FIt3qZ2C5YKtHtpPIP5IRD0xVQeKVvWgn5wTjTtkulBNL1ZglrSh-oLLGXxbc_NVZAhw%3D%3D?uid=0&filename=thor.jpg&disposition=inline&hash=&limit=0&content_type=image%2Fjpeg&owner_uid=0&tknv=v2&size=2048x2048",
      Colors.indigo),
  Heroes(
      "Thanos",
      "Fun isn't something one considers when balancing the universe... this does put a smile on my face.",
      "https://downloader.disk.yandex.ru/preview/ba7e4a4a68b79184f78f06af8fc45b4826ef2ea7e95ade91fdb0ebd6dcf87adc/6362d1a4/V5Zjnxgakv-ETjn4sY-e48QO6C7BNEyiDRDtopQ5LvdUEv9tjHg6ystzj1jiGJoS-IlaYUvDcY4pmSe6CfupgQ%3D%3D?uid=0&filename=thanos.jpg&disposition=inline&hash=&limit=0&content_type=image%2Fjpeg&owner_uid=0&tknv=v2&size=2048x2048",
      Colors.yellow)
];
