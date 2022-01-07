import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 50,left: 25),
          color: Colors.green,
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_back,color: Colors.white,),
                      SizedBox(
                        width: 30,
                      ),
                      Text("Login", style: TextStyle(fontSize: 30,fontWeight: FontWeight.normal,color: Colors.white),)
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 200,
              ),
              Container(
                padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Email or Mobile",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),

                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
