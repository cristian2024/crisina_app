import 'package:crisina_app/core/presentation/theme/crisina_colors.dart';
import 'package:crisina_app/core/presentation/theme/theme.dart';
import 'package:crisina_app/core/presentation/ui/dialogs/base_dialog.dart';
import 'package:crisina_app/core/presentation/ui/images/svgs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: Scaffold(
        body: Center(child: Texto()),
      ),
    );
  }
}

class Texto extends StatelessWidget {
  const Texto({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        BaseDialog(
          title: Text('Prueba'),
          context: context,
          child: Column(
            children: [
              Container(
                child: SvgPicture.asset(
                  CrisinaSVGS.authentication.routeAsset,
                ),
              ),
              Container(
                color: Colors.amber,
                height: 20,
                width: 20,
              ),
            ],
          ),
        ).show(context);
      },
      child: Text(
        'Hello World!',
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 30),
      ),
    );
  }
}
