import 'package:flutter/material.dart';
import 'package:stateful_practice/modules/artboard/view/art_board_screen.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3:true),
      home: ArtBoardScreen(),
    );
  }
}