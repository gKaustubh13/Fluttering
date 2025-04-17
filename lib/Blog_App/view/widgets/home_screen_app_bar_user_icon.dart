import 'package:flutter/material.dart';

class UserIcon extends StatelessWidget {
  const UserIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image(
        width: 40,
        height: 40,
        fit: BoxFit.cover,
        image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGa8nbA4_Y8eEKDf7xiwty91QSKdjt77_UwQ&s'),
      ),
    );
  }
}