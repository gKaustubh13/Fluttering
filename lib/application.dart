import 'package:flutter/material.dart';
import 'package:intro_app/Cryoto_app/view/homescreen.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}
