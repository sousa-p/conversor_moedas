import 'package:conversor_moedas/controllers/home_controller.dart';
import 'package:conversor_moedas/models/currency_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  final homeController = HomeController(toText, fromText);

  test('Converter Real para Dolar', () {
    toText.text = '1.0';
    homeController.toCurrency = CurrencyModel(
        name: 'Dolar', real: 5.65, dolar: 1, euro: 0.85, bitcoin: 0.0000088);
    homeController.fromCurrency = CurrencyModel(
        name: 'Real', real: 1, dolar: 0.18, euro: 0.15, bitcoin: 0.0000016);
    homeController.convert();
    expect(fromText.text, '5.65');
  });
}
