import 'package:flutter/material.dart';

class SocialCard extends StatelessWidget {
  final String image;
  final String name;
  const SocialCard({Key? key, required this.image, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Image(
                image: NetworkImage(image),
                width: 150,
              ),
              Text(
                name,
                style: const TextStyle(fontSize: 18),
              )
            ],
          )),
    );
  }
}
