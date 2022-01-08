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
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(top: 50, left: 25),
          color: Colors.green,
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
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
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Email or Mobile",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Colors.white)),
                              hintText: 'your@email.com',
                              hintStyle: TextStyle(color: Colors.white)),
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 17,bottom: 12),
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Password",
                                  style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),)
                            ],
                          ),
                          Column(
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                    border: UnderlineInputBorder(
                                        borderSide:
                                        new BorderSide(color: Colors.white)),
                                    hintText: 'Enter Password',
                                    hintStyle: TextStyle(color: Colors.white)),
                                obscureText: true,
                              )
                            ],
                          )
                        ],
                      ),
                    )
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
