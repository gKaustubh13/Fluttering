import 'dart:math';

import 'package:flutter/material.dart';
import 'package:stateful_practice/modules/artboard/view/widgets/palette_color_widget.dart';

const length = 8;
const width = 8;

const size = length * width;

final paletteColors = List.generate(
  100,
  (index) => Color.fromARGB(
    255,
    Random().nextInt(256),
    Random().nextInt(256),
    Random().nextInt(256),
  ),
);

class ArtBoardWidget extends StatefulWidget {
  const ArtBoardWidget({super.key});

  @override
  State<ArtBoardWidget> createState() => _ArtBoardWidgetState();
}

class _ArtBoardWidgetState extends State<ArtBoardWidget> {
  List<Color?> pixels = List.generate(size, (index) => null);
  Color selectedColor = paletteColors.first;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
            aspectRatio: 1 / 1,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: width
              ),
              itemCount: pixels.length,
              itemBuilder: (context, index) {
                final isFilled = pixels[index] != null;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      if (pixels[index] == selectedColor) {
                      pixels[index] = null;
                    } else {
                      pixels[index] = selectedColor;
                    }
                    });
                  },
                  child: Container(
                  decoration: BoxDecoration(
                    color: isFilled ? pixels[index] : null,
                    border: Border.all(color: Colors.white30),
                  ),
                ),
                );
              },
            )),
             SizedBox(
          height: 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: paletteColors.length,
            itemBuilder: (context, index) {
              return PaletteColorWidget(
                isSelected: paletteColors[index] == selectedColor,
                color: paletteColors[index],
                onTap: () {
                  setState(() {
                    selectedColor = paletteColors[index];
                  });
                },
              );
            },
          ),
        ),
        SizedBox(height: 16),
        FilledButton(
          onPressed: () {
            setState(() {
              pixels = List.generate(size, (index) => null);
            });
          },
          child: Text('Clear Canvas'),
        ),

      ],
    );
  }
}
