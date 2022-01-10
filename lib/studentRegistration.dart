import 'package:ascend/signup.dart';
import 'package:flutter/material.dart';

class StudentRegistration extends StatefulWidget {
  const StudentRegistration({Key? key}) : super(key: key);

  @override
  _StudentRegistrationState createState() => _StudentRegistrationState();
}

class _StudentRegistrationState extends State<StudentRegistration> {
  int selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 5,
              padding: const EdgeInsets.only(top: 40, left: 20),
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
                        "Student Registration",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Step 2/3",
                        style: TextStyle(color: Colors.yellow),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.only(top: 10,left: 37),
                      child: Text(
                        "Full Name In English",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )),
                  Container(
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          icon: Icon(Icons.person,color: Color(0xff19364A),),
                          hintText: 'Enter Name in English',
                          hintStyle: TextStyle(color: Colors.black54,fontSize: 13)),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  // Container(
                  //     padding: EdgeInsets.only(top: 10,left: 37),
                  //     child: Text(
                  //       "Full Name In Malayalam",
                  //       style: TextStyle(
                  //           fontSize: 18, fontWeight: FontWeight.bold),
                  //     )),
                  // Container(
                  //   child: TextField(
                  //     style: TextStyle(color: Colors.black),
                  //     decoration: InputDecoration(
                  //         border: UnderlineInputBorder(),
                  //         icon: Icon(Icons.person,color: Color(0xff19364A),),
                  //         hintText: 'Enter Name in Malayalam',
                  //         hintStyle: TextStyle(color: Colors.black54,fontSize: 13)),
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 12,
                  // ),
                  Container(
                      padding: EdgeInsets.only(top: 10,left: 37),
                      child: Text(
                        "Mobile",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )),
                  Container(
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          icon: Icon(Icons.phone_android,color: Color(0xff19364A),),
                          hintText: 'Enter Your Mobile Number',
                          hintStyle: TextStyle(color: Colors.black54,fontSize: 13)),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 10,left: 37),
                      child: Text(
                        "Email",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )),
                  Container(
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          icon: Icon(Icons.email,color: Color(0xff19364A),),
                          hintText: 'Enter Email Id',
                          hintStyle: TextStyle(color: Colors.black54,fontSize: 13)),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 10,left: 37),
                      child: Text(
                        "Date Of Birth",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )),
                  Container(
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          icon: Icon(Icons.calendar_today_outlined,color: Color(0xff19364A),),
                          hintText: 'dd/mm/yyyy',
                          hintStyle: TextStyle(color: Colors.black54,fontSize: 13)),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 10,left: 37),
                      child: Text(
                        "Gender",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Transform.scale(
                  scale: 0.7,
                  child: RadioListTile(
                      value: 0,
                      groupValue: selectedValue,
                      activeColor: Color(0xff19364A),
                      title: const Text(
                        "Male",
                        style: TextStyle(color: Colors.black),
                      ),
                      onChanged: (value) => setState(() {
                        selectedValue = 0;
                      })),
                ),
                Transform.scale(
                  scale: 0.7,
                  child: RadioListTile(
                      value: 1,
                      groupValue: selectedValue,
                      activeColor: Color(0xff19364A),
                      title: const Text(
                        "Female",
                        style: TextStyle(color: Colors.black),
                      ),
                      onChanged: (value) => setState(() {
                        selectedValue = 1;
                      })),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  child: const Text(
                    "Back",
                    style: TextStyle(fontSize: 16),
                  ),
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.deepOrange,
                      minimumSize: const Size(80, 20),
                      elevation: 20),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
                  },
                ),
                SizedBox(
                  width: 15,
                ),
                TextButton(
                  child: const Text(
                    "Next",
                    style: TextStyle(fontSize: 16),
                  ),
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.deepOrange,
                      minimumSize: const Size(80, 20),
                      elevation: 20),
                  onPressed: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

