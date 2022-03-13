import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UsernamePage extends StatelessWidget {
  const UsernamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      title: "Username",
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: const Text(
                  "You are logging in for the first time. Please set a username.",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: TextFormField(
                    decoration: const InputDecoration(
                  hintText: "Username",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MaterialButton(
                    height: 40,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                        side: const BorderSide(
                            width: 1,
                            style: BorderStyle.solid,
                            color: Colors.white)),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: MaterialButton(
                        height: 40,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        color: Colors.green,
                        child: const Text(
                          'Enter',
                          style: TextStyle(color: Colors.white),
                        ),
                      ))
                ],
              )
            ],
          )),
        )),
      ),
    );
  }
}
