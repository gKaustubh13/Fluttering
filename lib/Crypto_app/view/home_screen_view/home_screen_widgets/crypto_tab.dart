import 'package:flutter/material.dart';

class CryptoTab extends StatelessWidget {
  const CryptoTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: 310,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.black12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 14),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 161, 159, 159),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Text(
                    "Crypto",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Text("Fiat",
                    style: TextStyle(
                        color: Color.fromARGB(255, 114, 113, 113))),
                const Text("Card",
                    style: TextStyle(
                        color: Color.fromARGB(255, 114, 113, 113))),
                const Text("Savings      ",
                    style: TextStyle(
                        color: Color.fromARGB(255, 114, 113, 113))),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.black12),
            ),
            child:
                const Icon(Icons.bar_chart_outlined, color: Colors.black),
          ),
        ],
      ),
    );
  }
}