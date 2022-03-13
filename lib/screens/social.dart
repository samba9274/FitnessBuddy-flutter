import 'package:fitness_buddy/widgets/social_card.dart';
import 'package:flutter/material.dart';

class SocialPage extends StatelessWidget {
  const SocialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: TextFormField(
                      decoration: const InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                  )),
                )),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.search_rounded)),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: GridView.count(
                crossAxisCount: 2,
                scrollDirection: Axis.vertical,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                children: const <Widget>[
                  SocialCard(
                      image:
                          'https://64.media.tumblr.com/avatar_1c0b77e2f187_128.pnj',
                      name: 'Natsu'),
                  SocialCard(
                      image:
                          'https://img.wattpad.com/useravatar/EmikoCharlotte.128.923640.jpg',
                      name: 'Happy'),
                  SocialCard(
                      image:
                          'https://pm1.narvii.com/7470/c6f10901021c8f8c870d696c80d2b381c05b8cb1r1-1024-1024v2_128.jpg',
                      name: 'Erza'),
                ],
              ),
            )
          ],
        ));
  }
}
