import 'package:flutter/material.dart';

class EthInfoCard extends StatelessWidget {
  const EthInfoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  color: Color(0xFF6370E7),
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Text(
                    "B",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              const Text(
                'ETH',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              const Icon(Icons.keyboard_arrow_down, size: 20),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'Send',
                  style: TextStyle(
                    color: Color(0xFF9EA3AE),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
    
          Row(
            children: [
              const Text(
                '0,6948',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: const Color(0xFFD9F7E8),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Text(
                  'Max',
                  style: TextStyle(
                    color: Color(0xFF34C77B),
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
    
          const Text(
            'Balance: 0,6948 ETH',
            style: TextStyle(
              color: Color(0xFF9EA3AE),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}