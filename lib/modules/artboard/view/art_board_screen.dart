import 'package:flutter/material.dart';
import 'package:stateful_practice/modules/artboard/view/widgets/art_board_widget.dart';

class ArtBoardScreen extends StatelessWidget {
  const ArtBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pixel Art')),
      body:ArtBoardWidget(),
    );
  }
}