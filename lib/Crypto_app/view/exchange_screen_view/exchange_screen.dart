import 'package:flutter/material.dart';
import 'package:intro_app/Crypto_app/view/exchange_screen_view/exchange_screen_widgets/eth_info_card.dart';
import 'package:intro_app/Crypto_app/view/exchange_screen_view/exchange_screen_widgets/exchange_summary.dart';
import 'package:intro_app/Crypto_app/view/exchange_screen_view/exchange_screen_widgets/exchange_title.dart';
import 'package:intro_app/Crypto_app/view/exchange_screen_view/exchange_screen_widgets/swap_button_widget.dart';
import 'package:intro_app/Crypto_app/view/exchange_screen_view/exchange_screen_widgets/swap_icon_button_widget.dart';
import 'package:intro_app/Crypto_app/view/exchange_screen_view/exchange_screen_widgets/usd_info_card.dart';

class ExchangeScreen extends StatelessWidget {
  const ExchangeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              ExcahngeTitle(),

              Stack(
                children: [
                  Column(
                    children: [
                      EthInfoCard(),

                      const SizedBox(height: 16),
                      UsdInfoCard(),
                    ],
                  ),
                  SwapIconButtonWidget(),
                ],
              ),

              const SizedBox(height: 16),

              SwapButtonWidget(),

              const SizedBox(height: 16),

              ExgchangeSummary(),
            ],
          ),
        ),
      ),
    );
  }
}