import 'package:flutter/material.dart';

class ConsumptionItem extends StatelessWidget {
  final String itemName;
  final String itemQuantity;
  final String consumptionTime;

  const ConsumptionItem(
      {Key? key,
      required this.itemName,
      required this.itemQuantity,
      required this.consumptionTime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15, left: 10, right: 10),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                itemName,
                style: const TextStyle(color: Colors.white, fontSize: 25),
              ),
              Text(itemQuantity,
                  style: const TextStyle(color: Colors.white, fontSize: 15))
            ],
          )),
          Text(consumptionTime,
              style: const TextStyle(color: Colors.white, fontSize: 20))
        ],
      ),
    );
  }
}
