import 'package:ascend/home%20page/volunteer/filters.dart';
import 'package:ascend/home%20page/volunteer/requestCompleted.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class VolunteerWithUsPage3 extends StatefulWidget {
  const VolunteerWithUsPage3({Key? key}) : super(key: key);

  @override
  _VolunteerWithUsPage3State createState() => _VolunteerWithUsPage3State();
}

class _VolunteerWithUsPage3State extends State<VolunteerWithUsPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 5,
                padding: const EdgeInsets.only(top: 50, left: 20),
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
                      icon:  Icon(Icons.arrow_back),
                      iconSize: 30,
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const VolunteerWithUsPage2()));
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Icon(
                          FontAwesomeIcons.handsHelping,
                          size: 43,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Apply Now",
                          style: TextStyle(
                              color: Colors.white, fontSize: 25),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "subtitle",
                          style: TextStyle(color: Colors.yellow),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(15),
                height: 600,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      blurRadius: 2, spreadRadius: 2, color: Colors.grey),
                ]),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                            margin: EdgeInsets.all(30),
                            child: Text(
                                "By pressing conform button we will receive your request for volunteering for following programme",
                                style: TextStyle(
                                    color: Colors.black54,
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 15))),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(
                              left: 15, right: 15, top: 0, bottom: 15),
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2,
                                    spreadRadius: 2,
                                    color: Colors.grey),
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Program Name",
                                  style: TextStyle(
                                      color: Color(0xff49914f),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                "SCHOOL NAME",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 2),
                              Text(
                                "Private School / Calicut",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(height: 2),
                              Divider(
                                color: Colors.grey,
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Text("Class Gender"),
                                  SizedBox(width: 100),
                                  Text("Male",
                                      style: TextStyle(
                                          color: Color(0xff070807),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 11)),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Text("Program Timing"),
                                  SizedBox(width: 84),
                                  Text("08:00- 13:30",
                                      style: TextStyle(
                                          color: Color(0xff070807),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 11)),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Text("Program Start Date"),
                                  SizedBox(width: 66),
                                  Container(
                                    child: Text("21/08/2018",
                                        style: TextStyle(
                                            color: Color(0xff070807),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11)),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Container(
                                      child: Text("Program  End Date")),
                                  SizedBox(width: 69),
                                  Text("30/08/2018",
                                      style: TextStyle(
                                          color: Color(0xff070807),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 11)),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Container(child: Text("Total Days")),
                                  SizedBox(width: 119),
                                  Text("5",
                                      style: TextStyle(
                                          color: Color(0xff070807),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 11)),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Material(
                          child: RaisedButton(
                            color: Colors.deepOrange,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder:(context)=>VolunteerWithUsPage4()));
                            },
                            child: Text("Confirm",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                )),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
