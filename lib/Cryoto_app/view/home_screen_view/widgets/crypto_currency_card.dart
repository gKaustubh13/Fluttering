import 'package:flutter/material.dart';

class CryptoCurrencyCard extends StatelessWidget {
  const CryptoCurrencyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 175,
          width: 215,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.black12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.orange.shade400,
                  child: Icon(
                      size: 32, 
                      color: Colors.white, 
                      Icons.currency_bitcoin)),
              const Spacer(),
              const Text(
                "1,1272",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Row(
                children: [
                  const Text("\$67 203,95"),
                  const Spacer(),
                  Icon(Icons.arrow_upward,
                      color: Colors.green.shade400),
                  const Text("2.15%",
                      style: TextStyle(
                        color: Colors.green,
                      )),
              ],)

            ],
          )),
    );
  }
}
