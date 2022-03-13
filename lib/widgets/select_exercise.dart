import 'package:fitness_buddy/widgets/exercise_card.dart';
import 'package:flutter/material.dart';

class SelectExercise extends StatelessWidget {
  const SelectExercise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          SizedBox(
            width: double.maxFinite,
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: const <Widget>[
                ExerciseCard(image: 'assets/icons/squat.png', name: 'Squat'),
                ExerciseCard(
                    image: 'assets/icons/jumping_jack.png',
                    name: 'Jumping Jacks'),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            height: 100,
            width: double.maxFinite,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: const <Widget>[
                ExerciseCard(
                    image: 'assets/icons/running.png', name: 'Running'),
                ExerciseCard(
                    image: 'assets/icons/cycling.png', name: 'Cycling'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
