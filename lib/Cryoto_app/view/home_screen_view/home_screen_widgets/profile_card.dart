import 'package:flutter/material.dart';
import 'package:intro_app/Cryoto_app/view/home_screen_view/home_screen_widgets/profile_card_details.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: [
        Container(
          height: 280,
          width: 380,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 63, 74, 225),
                Color.fromARGB(255, 164, 169, 236),
                Color.fromARGB(255, 199, 201, 233),
                Colors.white
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        ProfileCardDetails()
      ]),
    );
  }
}
