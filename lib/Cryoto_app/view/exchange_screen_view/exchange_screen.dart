import 'package:flutter/material.dart';

class ExchangeScreen extends StatelessWidget {
  const ExchangeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Row(
          children: [
            SizedBox(width: 75),
            Text("Exchange"),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Text("Exchange Screen"),
      ),
    );
  }
}