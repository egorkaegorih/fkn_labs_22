import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class ProviderBackgroundColor extends ChangeNotifier {
  Color _activColor = Colors.green;

  Color get activColor => _activColor;

  void setActivColor(String pathImage) async {
    Future<PaletteGenerator> pallet = PaletteGenerator.fromImageProvider(
      NetworkImage(pathImage),
      maximumColorCount: 20,
    );
    pallet.then((pallet) {
      _activColor = pallet.dominantColor != null
          ? pallet.dominantColor!.color
          : Colors.white;

      notifyListeners();
    });
  }
}
