
import 'package:ascend/home%20page/volunteer/applyNow.dart';
import 'package:ascend/home%20page/volunteer/volunteerWithUs.dart';
import 'package:flutter/material.dart';

import '../../homePage.dart';

class VolunteerWithUsPage2 extends StatefulWidget {
  const VolunteerWithUsPage2({Key? key}) : super(key: key);

  @override
  _VolunteerWithUsPage2State createState() => _VolunteerWithUsPage2State();
}

class _VolunteerWithUsPage2State extends State<VolunteerWithUsPage2> {
  int _value = 1;
  int _value2= 1;
  int _value3= 1;
  int _value4= 1;
  int _value5= 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        left: true,
        right: true,
        bottom: true,
        top: true,
        child: Scaffold(
          body: ListView(
            children: [
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 7,
                    padding: const EdgeInsets.only(top: 40, left: 20),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: const AssetImage(
                                "assets/images/background.jpg"),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.4),
                                BlendMode.darken))),
                    //color: Colors.green,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          icon:  Icon(Icons.close),
                          iconSize: 30,
                          color: Colors.white,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const VolunteerWithUsPage()));
                          },
                        ),
                        Spacer(),
                        Text(
                          "Filters",
                          style: TextStyle(
                              color: Colors.white, fontSize: 25),
                        ),
                        Spacer(),
                        SizedBox(width: 35,)
                      ],
                    ),

                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(20),
                    // height: 600,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 1,
                              color: Colors.grey)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "SCHOOL TYPE",
                          style: TextStyle(fontSize: 15),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Government",
                                        style: TextStyle(fontSize: 11),
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Text(
                                        "Private",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  )),
                              Column(
                                children: [
                                  Radio(
                                    // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

                                    value: 1,
                                    groupValue: _value,
                                    activeColor: Colors.blueGrey,
                                    fillColor: MaterialStateColor.resolveWith(
                                            (states) => Colors.grey),
                                    onChanged: (value) {
                                      print(value);
                                      setState(() {
                                        _value = 1;
                                      });
                                    },
                                    //   fillColor:
                                  ),
                                  Radio(
                                    value: 2,
                                    groupValue: _value,
                                    activeColor: Colors.blueGrey,
                                    fillColor: MaterialStateColor.resolveWith(
                                            (states) => Colors.grey),
                                    onChanged: (value) {
                                      print(value);
                                      setState(() {
                                        _value = 2;
                                      });
                                    },
                                    //   fillColor:
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(color: Colors.grey,),
                        Text(
                          "LANGUAGE",
                          style: TextStyle(fontSize: 15),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Malayalam",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Text(
                                        "English",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  )),
                              Column(
                                children: [
                                  Radio(
                                    // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

                                    value: 1,
                                    groupValue: _value2,
                                    activeColor: Colors.blueGrey,
                                    fillColor: MaterialStateColor.resolveWith(
                                            (states) => Colors.grey),
                                    onChanged: (value) {
                                      print(value);
                                      setState(() {
                                        _value2 = 1;
                                      });
                                    },
                                    //   fillColor:
                                  ),
                                  Radio(
                                    value: 2,
                                    groupValue: _value2,
                                    activeColor: Colors.blueGrey,
                                    fillColor: MaterialStateColor.resolveWith(
                                            (states) => Colors.grey),
                                    onChanged: (value) {
                                      // print(value);
                                      setState(() {
                                        _value2 = 2;
                                      });
                                    },
                                    //   fillColor:
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(color: Colors.grey,),
                        Text(
                          "GENDER",
                          style: TextStyle(fontSize: 15),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Male",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      SizedBox(
                                        height:25,
                                      ),
                                      Text(
                                        "Female",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  )),
                              Column(
                                children: [
                                  Radio(
                                    // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

                                    value: 1,
                                    groupValue: _value3,
                                    activeColor: Colors.blueGrey,
                                    fillColor: MaterialStateColor.resolveWith(
                                            (states) => Colors.grey),
                                    onChanged: (value) {
                                      print(value);
                                      setState(() {
                                        _value3 = 1;
                                      });
                                    },
                                    //   fillColor:
                                  ),
                                  Radio(
                                    value: 2,
                                    groupValue: _value3,
                                    activeColor: Colors.blueGrey,
                                    fillColor: MaterialStateColor.resolveWith(
                                            (states) => Colors.grey),
                                    onChanged: (value) {
                                      // print(value);
                                      setState(() {
                                        _value3 = 2;
                                      });
                                    },
                                    //   fillColor:
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(color: Colors.grey,),
                        Text(
                          "DURATION",
                          style: TextStyle(fontSize: 15),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "1 day",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Text(
                                        "2 day",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),

                                      Text(
                                        "3 day",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Text(
                                        "More",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  )),
                              Column(
                                children: [
                                  Radio(
                                    // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

                                    value: 1,
                                    groupValue: _value4,
                                    activeColor: Colors.blueGrey,
                                    fillColor: MaterialStateColor.resolveWith(
                                            (states) => Colors.grey),
                                    onChanged: (value) {
                                      print(value);
                                      setState(() {
                                        _value4 = 1;
                                      });
                                    },
                                    //   fillColor:
                                  ),
                                  Radio(
                                    value: 2,
                                    groupValue: _value4,
                                    activeColor: Colors.blueGrey,
                                    fillColor: MaterialStateColor.resolveWith(
                                            (states) => Colors.grey),
                                    onChanged: (value) {
                                      print(value);
                                      setState(() {
                                        _value4 = 2;
                                      });
                                    },
                                    //   fillColor:
                                  ),
                                  Radio(
                                    // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

                                    value: 3,
                                    groupValue: _value4,
                                    activeColor: Colors.blueGrey,
                                    fillColor: MaterialStateColor.resolveWith(
                                            (states) => Colors.grey),
                                    onChanged: (value) {
                                      print(value);
                                      setState(() {
                                        _value4 = 3;
                                      });
                                    },
                                    //   fillColor:
                                  ),
                                  Radio(
                                    // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

                                    value: 4,
                                    groupValue: _value4,
                                    activeColor: Colors.blueGrey,
                                    fillColor: MaterialStateColor.resolveWith(
                                            (states) => Colors.grey),
                                    onChanged: (value) {
                                      print(value);
                                      setState(() {
                                        _value4 = 4;
                                      });
                                    },
                                    //   fillColor:
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(color: Colors.grey,),
                        Text(
                          "HOURS",
                          style: TextStyle(fontSize: 15),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Morning",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Text(
                                        "Evening",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  )),
                              Column(
                                children: [
                                  Radio(
                                    // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

                                    value: 1,
                                    groupValue: _value5,
                                    activeColor: Colors.blueGrey,
                                    fillColor: MaterialStateColor.resolveWith(
                                            (states) => Colors.grey),
                                    onChanged: (value) {
                                      // print(value);
                                      setState(() {
                                        _value5 = 1;
                                      });
                                    },
                                    //   fillColor:
                                  ),
                                  Radio(
                                    value: 2,
                                    groupValue: _value5,
                                    activeColor: Colors.blueGrey,
                                    fillColor: MaterialStateColor.resolveWith(
                                            (states) => Colors.grey),
                                    onChanged: (value) {
                                      // print(value);
                                      setState(() {
                                        _value5 = 2;
                                      });
                                    },
                                    //   fillColor:
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(color: Colors.grey,),
                        SizedBox(height: 70,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FlatButton(
                                color:Colors.deepOrange,onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>VolunteerWithUsPage3()));
                            }, child: Text("Apply",style: TextStyle(color: Colors.white),))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
