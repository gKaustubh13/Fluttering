import 'package:flutter/material.dart';

class Swap_icon_button_widget extends StatelessWidget {
  const Swap_icon_button_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 175,
      left: 0,
      right: 0,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey.shade300, width: 1),
          ),
          child: const Center(
            child: Icon(
              Icons.swap_vert,
              color: Color(0xFF6370E7),
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}