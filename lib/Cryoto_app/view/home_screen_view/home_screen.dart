import 'package:flutter/material.dart';
import 'package:intro_app/Cryoto_app/view/home_screen_view/widgets/crypto_currency_card.dart';
import 'package:intro_app/Cryoto_app/view/home_screen_view/widgets/crypto_tab.dart';
import 'package:intro_app/Cryoto_app/view/home_screen_view/widgets/profile_card.dart';
import 'package:intro_app/Cryoto_app/view/home_screen_view/widgets/recent_transactions_tab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Crypto App"),
      //   backgroundColor: const Color.fromARGB(255, 63, 74, 225),
      // ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(height: 50),
        ProfileCard(),
        CryptoTab(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            CryptoCurrencyCard(),
            CryptoCurrencyCard(),
            CryptoCurrencyCard(),
            CryptoCurrencyCard(),
            CryptoCurrencyCard(),
          ]),
        ),
        RecentTransactionsTab(),
      ]),
      bottomNavigationBar: Padding(
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
      ),
    );
  }
}
