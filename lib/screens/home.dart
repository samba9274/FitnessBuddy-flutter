import 'package:fitness_buddy/widgets/consumption_info.dart';
import 'package:fitness_buddy/widgets/select_exercise.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "523 / 2305 cal",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                )),
                Container(
                  width: 100,
                  margin: const EdgeInsets.only(left: 10),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "\$ 52",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                )
              ],
            ),
            const SelectExercise(),
            const ConsumptionInfo()
          ],
        ));
  }
}
