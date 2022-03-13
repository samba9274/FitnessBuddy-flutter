import 'package:flutter/material.dart';

class ExerciseCard extends StatelessWidget {
  final String image;
  final String name;
  const ExerciseCard({Key? key, required this.image, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: MaterialButton(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        onPressed: () {},
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: Image.asset(
                image,
                width: 75,
              ),
            ),
            Text(name)
          ],
        ),
      ),
    );
  }
}
