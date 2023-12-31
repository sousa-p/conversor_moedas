import 'package:conversor_moedas/controllers/home_controller.dart';
import 'package:conversor_moedas/views/components/currency_box.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  late HomeController homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText, fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 100, right: 50, left: 50),
          child: Column(
            children: [
              Image.asset('assets/logo.png', width: 250),
              CurrencyBox(
                selectedItem: homeController.toCurrency,
                items: homeController.currencies,
                onChanged: (model) {
                  setState(() {
                    homeController.toCurrency = model!;
                  });
                },
                controller: toText,
              ),
              const SizedBox(height: 16),
              CurrencyBox(
                selectedItem: homeController.fromCurrency,
                items: homeController.currencies,
                onChanged: (model) {
                  setState(() {
                    homeController.fromCurrency = model!;
                  });
                },
                controller: fromText,
              ),
              const SizedBox(
                height: 64,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 25),
                      backgroundColor: Colors.amberAccent),
                  onPressed: () {
                    homeController.convert();
                  },
                  child: const Text('CONVERTER'))
            ],
          ),
        ),
      ),
    );
  }
}
