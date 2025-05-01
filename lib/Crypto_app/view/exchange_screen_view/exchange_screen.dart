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
              Excahnge_title(),

              Stack(
                children: [
                  Column(
                    children: [
                      Eth_info_card(),

                      const SizedBox(height: 16),
                      Usd_info_card(),
                    ],
                  ),
                  Swap_icon_button_widget(),
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