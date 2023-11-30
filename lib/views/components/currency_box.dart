import 'package:conversor_moedas/models/currency_model.dart';
import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  final List<CurrencyModel> items;
  final CurrencyModel selectedItem;
  final TextEditingController controller;
  final void Function(CurrencyModel?) onChanged;

  const CurrencyBox({
    Key? key,
    required this.items,
    required this.controller,
    required this.onChanged,
    required this.selectedItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: SizedBox(
                height: 63,
                child: DropdownButton<CurrencyModel>(
                    value: selectedItem,
                    underline: Container(height: 1, color: Colors.amber),
                    items: items
                        .map((e) =>
                            DropdownMenuItem(value: e, child: Text(e.name)))
                        .toList(),
                    onChanged: onChanged),
              )),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            flex: 4,
            child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.amberAccent)))),
          ),
        ],
      ),
    );
  }
}
