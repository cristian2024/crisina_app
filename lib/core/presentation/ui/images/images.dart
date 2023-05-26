import 'package:crisina_app/core/utils/images_utils.dart';

enum CrisinaImages {
  authentication(route: 'undraw_authentication.svg');

  final String route;
  final bool inAsset;
  const CrisinaImages({
    required this.route,
    this.inAsset = true,
  });
}

extension Route on CrisinaImages {
  String get routeAsset {
    return routeToAsset(
      route,
      inAsset: inAsset,
    );
  }
}
