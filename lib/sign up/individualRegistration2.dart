import 'package:ascend/sign%20up/registrationCompleted.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'individualRegistration.dart';

class IndividualRegistrationPage2 extends StatefulWidget {
  const IndividualRegistrationPage2({Key? key}) : super(key: key);

  @override
  _IndividualRegistrationPage2State createState() => _IndividualRegistrationPage2State();
}

class _IndividualRegistrationPage2State extends State<IndividualRegistrationPage2> {
  int _selectedValue = 0;
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
                        "Individual Registration",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Step 3/3",
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
                        "Place Of Work",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )),
                  Container(
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          icon: Icon(Icons.account_balance_outlined,color: Color(0xff19364A),),
                          hintText: 'Enter Working Place',
                          hintStyle: TextStyle(color: Colors.black54,fontSize: 13)),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 10,left: 37),
                      child: Text(
                        "Position",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )),
                  Container(
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          icon: Icon(FontAwesomeIcons.briefcase,color: Color(0xff19364A),size: 20,),
                          hintText: 'Enter Position',
                          hintStyle: TextStyle(color: Colors.black54,fontSize: 13)),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 10,left: 37),
                      child: Text(
                        "Total Years Of Experiance",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )),
                  TextField(

                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        icon: Icon(Icons.calendar_today_outlined,color: Color(0xff19364A),),
                        hintText: 'Enter Years of Experience',
                        hintStyle: TextStyle(color: Colors.black54,fontSize: 13)),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 10,left: 37),
                      child: Text(
                        "Languages Speak",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )),
                  //  SizedBox(height: 10,),
                  Container(

                    // width: 200,
                    height: 50,
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(FontAwesomeIcons.comment,color: Color(0xff19364A),),
                        SizedBox(width: 8,),
                        Transform.scale(
                          scale: 0.7,
                          child: Radio(
                              value: 0,
                              groupValue: _selectedValue,
                              activeColor: Color(0xff19364A),
                              // title: const Text(
                              //   "Male",
                              //   style: TextStyle(color: Colors.black),
                              // ),
                              onChanged: (value) => setState(() {
                                _selectedValue = 0;
                              })),
                        ),
                        Text("English"),
                        SizedBox(width: 25,),
                        Transform.scale(
                          scale: 0.7,
                          child: Radio(
                              value: 1,
                              groupValue: _selectedValue,
                              activeColor: Color(0xff19364A),
                              // title: const Text(
                              //   "Female",
                              //   style: TextStyle(color: Colors.black),
                              // ),
                              onChanged: (value) => setState(() {
                                _selectedValue = 1;
                              })),
                        ),
                        Text("Malayalam")
                      ],
                    ),
                  ),
                  Divider(
                      indent: 40,
                      color: Color(0xff19364A)),
                  SizedBox(height: 12,),
                  Container(
                    padding: EdgeInsets.only(top: 10,left: 37),
                      child: Text("Additional Info",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),
                  TextField(

                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        icon: Icon(FontAwesomeIcons.edit,color: Color(0xff19364A),),
                       // hintText: 'Enter Years of Experience',
                        hintStyle: TextStyle(color: Colors.black54,fontSize: 13)),
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                  ),
                ],
              ),
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
                      minimumSize: const Size(80, 30),
                      elevation: 20),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>IndividualRegistrationPage()));
                  },
                ),
                SizedBox(
                  width: 15,
                ),
                TextButton(
                  child: const Text(
                    "Register",
                    style: TextStyle(fontSize: 16),
                  ),
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.deepOrange,
                      minimumSize: const Size(80, 30),
                      elevation: 20),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationCompletedPage()));
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
