import 'package:flutter/material.dart';

class DummyPage extends StatelessWidget {
  const DummyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: const AssetImage("assets/images/background.jpg"),
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.6), BlendMode.darken),
                fit: BoxFit.cover)),
        child: const Center(
            child: Text(
          "           Sorry\nWork On Progress!",
          style: TextStyle(color: Colors.white, fontSize: 25),
        )),
      ),
    );
  }
}
