import 'package:flutter/material.dart';

class ExgchangeSummary extends StatelessWidget {
  const ExgchangeSummary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Rate',
                  style: TextStyle(
                    color: Color(0xFF9EA3AE),
                    fontSize: 14,
                  ),
                ),
                Text(
                  '1 ETH = 2593,00 USD',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
    
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Estimated fee',
                  style: TextStyle(
                    color: Color(0xFF9EA3AE),
                    fontSize: 14,
                  ),
                ),
                Text(
                  '4,28 USD',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
    
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'You will receive',
                style: TextStyle(
                  color: Color(0xFF9EA3AE),
                  fontSize: 14,
                ),
              ),
              Text(
                '1 797,45 USD',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}