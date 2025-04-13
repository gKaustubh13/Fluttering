import 'package:flutter/material.dart';

class CryptoActions extends StatelessWidget {
  const CryptoActions({
    super.key, required this.title, required this.imageIcon
  });
  final String title;
  final Widget imageIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 25,
          child: imageIcon,
        ),
        SizedBox(
          height: 5,
        ),
        Text(title),
        ],
    );
  }
}