import 'package:ascend/homePage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class RegistrationCompletedPage extends StatefulWidget {
  const RegistrationCompletedPage({Key? key}) : super(key: key);

  @override
  _RegistrationCompletedPageState createState() =>
      _RegistrationCompletedPageState();
}

class _RegistrationCompletedPageState extends State<RegistrationCompletedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 5,
              padding: const EdgeInsets.only(top: 50, left: 20),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: const AssetImage("assets/images/background.jpg"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.darken))),
              //color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Registration Completed",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Success",
                        style: TextStyle(color: Colors.yellow),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 150,
                      width: 150,
                      child: Lottie.asset(
                          "assets/lottie/success.json",
                      repeat: false)),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Thank You For Registration",
                    style: TextStyle(
                        color: Color(0xFF2cda94),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Text(
                    "   We will Contact You once \nYour registration is approved",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    },
                    child: Text("Close"),
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.deepOrange,
                        minimumSize: Size(80, 35)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
