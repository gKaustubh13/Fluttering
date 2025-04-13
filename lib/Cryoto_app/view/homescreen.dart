import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(children: [
          Container(
            height: 260,
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Row(
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
              ),
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
              // SizedBox(
              //   height: 5,
              // ),
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
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.add),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Add Saving")
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.arrow_upward_sharp),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Withdraw")
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.arrow_downward_sharp),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Top Up")
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.compare_arrows_sharp),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Exchange")
                    ],
                  )
                ],
              )
            ],
          )
        ]),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 50,
              width: 310,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.black12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Crypto"),
                  Text("Fiat"),
                  Text("Card"),
                  Text("Savings")
                ],
              ),
            ),
            // Text("Crypto")
            CircleAvatar(radius: 25, child: Icon(Icons.bar_chart_sharp))
          ],
        ),
      )
    ]);
  }
}