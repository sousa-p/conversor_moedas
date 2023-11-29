import 'package:conversor_moedas/views/components/currency_box.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.only(top: 100, right: 25, left: 25),
        child: Column(
          children: [
            Image.asset('assets/logo.png', width: 250),
            const CurrencyBox(),
            const SizedBox(height: 16),
            const CurrencyBox(),
            const SizedBox(
              height: 64,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 25)),
                onPressed: () {},
                child: const Text('Converter'))
          ],
        ),
      ),
    ));
  }
}
