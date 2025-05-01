import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 10,
        ),
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 25,
          foregroundImage: AssetImage("assets/img.jpeg"),
        ),
        SizedBox(width: 15),
        Text('Mitchell Santos'),
        SizedBox(width: 135),
        CircleAvatar(
            backgroundColor: Colors.white,
            radius: 25,
            child: Icon(size: 32, Icons.notification_add_outlined)),
      ],
    );
  }
}