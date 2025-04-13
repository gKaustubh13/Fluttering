import 'package:flutter/material.dart';
import 'package:intro_app/Cryoto_app/view/exchange_screen_view/exchange_screen.dart';
import 'package:intro_app/Cryoto_app/view/home_screen_view/home_screen.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      // home: ExchangeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
