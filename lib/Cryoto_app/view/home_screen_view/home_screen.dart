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
      appBar: AppBar(
        title: const Text("Crypto App"),
        backgroundColor: const Color.fromARGB(255, 63, 74, 225),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
    );
  }
}
