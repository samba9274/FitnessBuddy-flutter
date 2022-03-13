import 'package:fitness_buddy/widgets/consumption_items.dart';
import 'package:flutter/material.dart';

class ConsumptionInfo extends StatelessWidget {
  const ConsumptionInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Row(
              children: <Widget>[
                const Expanded(
                    child: Text(
                  "Consumption",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )),
                MaterialButton(
                  onPressed: () {},
                  color: Colors.blue,
                  shape: const CircleBorder(),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      "+",
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                  ),
                )
              ],
            ),
          ),
          Column(
            children: const <Widget>[
              ConsumptionItem(
                  itemName: "Rice",
                  itemQuantity: "1 bowl",
                  consumptionTime: "12:30 pm"),
              ConsumptionItem(
                  itemName: "Mix Veg Soup",
                  itemQuantity: "1 bowl",
                  consumptionTime: "4:20 pm"),
              ConsumptionItem(
                  itemName: "Idli Sambar",
                  itemQuantity: "1 serving",
                  consumptionTime: "8:00 pm"),
            ],
          )
        ],
      ),
    );
  }
}
