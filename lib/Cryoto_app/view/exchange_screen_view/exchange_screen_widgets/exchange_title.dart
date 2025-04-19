import 'package:flutter/material.dart';

class Excahnge_title extends StatelessWidget {
  const Excahnge_title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 20.0),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.chevron_left,
                  size: 22, color: Colors.black),
              onPressed: () {},
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(
                minWidth: 42,
                minHeight: 42,
              ),
            ),
          ),
          const Expanded(
            child: Center(
              child: Text(
                'Exchange',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(width: 42), 
        ],
      ),
    );
  }
}