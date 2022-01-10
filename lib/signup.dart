import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  int selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(top: 50, left: 25),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: const AssetImage("assets/images/background.jpg"),
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.6), BlendMode.darken),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      iconSize: 30,
                      color: Colors.white,
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>const FirstPage()));
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 18,
                        ),
                        const Text(
                          "Registration",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                        const SizedBox(height: 5),
                        Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Step 1/3",
                              style: TextStyle(color: Colors.yellow),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            // SizedBox(
            //   height: 40,
            // ),
            Container(
              padding: const EdgeInsets.only(top: 250),
              //  alignment: Alignment.center,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      bottom: 10,
                      left: 17,
                    ),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Choose Registration Type",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RadioListTile(
                          value: 0,
                          groupValue: selectedValue,
                          activeColor: Colors.white,
                          title: const Text(
                            "Student Volunteer",
                            style: TextStyle(color: Colors.white),
                          ),
                          onChanged: (value) => setState(() {
                                selectedValue = 0;
                              })),
                      RadioListTile(
                          value: 1,
                          groupValue: selectedValue,
                          activeColor: Colors.white,
                          title: const Text(
                            "Individual Volunteer",
                            style: TextStyle(color: Colors.white),
                          ),
                          onChanged: (value) => setState(() {
                                selectedValue = 1;
                              })),
                      RadioListTile(
                          value: 2,
                          groupValue: selectedValue,
                          activeColor: Colors.white,
                          title: const Text(
                            "Corporate Volunteer",
                            style: TextStyle(color: Colors.white),
                          ),
                          onChanged: (value) => setState(() {
                                selectedValue = 2;
                              }))
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 35),
                    child: Column(
                      children: [
                        TextButton(
                          child: const Text(
                            "Next",
                            style: TextStyle(fontSize: 20),
                          ),
                          style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.deepOrange,
                              minimumSize: const Size(200, 50),
                              elevation: 20),
                          onPressed: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                          },
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
    );
  }
}
