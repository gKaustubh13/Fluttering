
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black12,
              width: 1,
            ),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'Dashboard',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.credit_card_outlined),
                label: 'Card',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet_outlined),
                label: 'Accounts',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.savings_outlined),
                label: 'Savings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
