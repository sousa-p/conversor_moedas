import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  const CurrencyBox({super.key});

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
                child: DropdownButton(
                    value: 'Real',
                    underline: Container(height: 1, color: Colors.amber),
                    items: const [
                      DropdownMenuItem(
                        value: 'Real',
                        child: Text('Real'),
                      ),
                      DropdownMenuItem(
                        value: 'Dolar',
                        child: Text('Dolar'),
                      ),
                    ],
                    onChanged: (value) {}),
              )),
          const SizedBox(
            width: 16,
          ),
          const Expanded(
            flex: 4,
            child: TextField(
                decoration: InputDecoration(
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
