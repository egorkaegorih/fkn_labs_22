import 'package:flutter/cupertino.dart';
import 'provider_background_color.dart';
import 'package:provider/provider.dart';

class BackgroundTriangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color colorTriangle =
        Provider.of<ProviderBackgroundColor>(context).activColor;

    return Container(
        child: CustomPaint(
            size: Size(200, 200), painter: DrawTriangle(colorTriangle)));
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
