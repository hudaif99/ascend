import 'package:ascend/firstPage.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(top: 50, left: 25),
    decoration: BoxDecoration(
    image: DecorationImage(
    image: const AssetImage("assets/images/background.jpg"),
    fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.4),
            BlendMode.darken)
    ),),
         // color: const Color(0xFF33935C),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    iconSize: 30,
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const FirstPage()));
                    },
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  )
                ],
              ),
              const SizedBox(
                height: 200,
              ),
              Container(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: const [
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
                      children: const [
                        TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: 'your@email.com',
                              hintStyle: TextStyle(color: Colors.white)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Password",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          children: const [
                            TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  hintText: 'Enter Password',
                                  hintStyle: TextStyle(color: Colors.white)),
                              obscureText: true,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 17,
                        ),
                        Column(
                          children: [
                            CheckboxListTile(
                              value: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = value!;
                                });
                              },
                              title: const Text(
                                "Remember",
                                style: TextStyle(color: Colors.white),
                              ),
                              selected: _value,
                              controlAffinity: ListTileControlAffinity.leading,
                              contentPadding:
                                  const EdgeInsets.only(top: 2, bottom: 12),
                              activeColor: Colors.black,
                              checkColor: Colors.white,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            TextButton(
                              child: const Text(
                                "LogIn",
                                style: TextStyle(fontSize: 20),
                              ),
                              style: TextButton.styleFrom(
                                  primary: Colors.white,
                                  backgroundColor: Colors.deepOrange,
                                  minimumSize: const Size(200, 50),
                                  elevation: 20),
                              onPressed: () {},
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 19,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Forgot ID/Password",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Sign Up",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
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
