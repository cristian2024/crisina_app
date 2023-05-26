import 'package:crisina_app/core/utils/images_utils.dart';

enum CrisinaSVGS {
  authentication(route: 'undraw_authentication.svg');

  final String route;
  final bool inAsset;
  const CrisinaSVGS({
    required this.route,
    this.inAsset = true,
  });
}


extension Route on CrisinaSVGS {
  String get routeAsset {
    return routeToAsset(
      route,
      inAsset: inAsset,
      type: ImgType.svg,
    );
  }
}
