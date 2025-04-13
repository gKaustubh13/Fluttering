import 'package:flutter/material.dart';
import 'package:intro_app/Cryoto_app/view/home_screen_view/widgets/crypto_actions.dart';
import 'package:intro_app/Cryoto_app/view/home_screen_view/widgets/profile_tab.dart';

class ProfileCardDetails extends StatelessWidget {
  const ProfileCardDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        ProfileTab(),
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Text("Total Balance"),
            SizedBox(width: 10),
            Icon(Icons.remove_red_eye_outlined)
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Text(
              "\$72 829,62",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CryptoActions(
              title: "Add Saving",
              imageIcon: Icon(Icons.add),
            ),
            CryptoActions(
              title: "Withdraw",
              imageIcon: Icon(Icons.arrow_upward_outlined),
            ),
            CryptoActions(
              title: "Top Up",
              imageIcon: Icon(Icons.arrow_downward_outlined),
            ),
            CryptoActions(
              title: "Exchange",
              imageIcon: Icon(Icons.swap_horiz_outlined),
            ),
          ],
        )
      ],
    );
  }
}