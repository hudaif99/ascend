
import 'package:ascend/home%20page/volunteer/applyNow.dart';
import 'package:ascend/homePage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class VolunteerWithUsPage4 extends StatefulWidget {
  const VolunteerWithUsPage4({Key? key}) : super(key: key);

  @override
  _VolunteerWithUsPage4State createState() => _VolunteerWithUsPage4State();
}

class _VolunteerWithUsPage4State extends State<VolunteerWithUsPage4> {
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const VolunteerWithUsPage3()));
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Request Completed",
                          style: TextStyle(
                              color: Colors.white, fontSize: 25),
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
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 15, top: 100, right: 15),
                margin: EdgeInsets.all(15),
                height: 600,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      blurRadius: 2, spreadRadius: 2, color: Colors.grey),
                ]),
                child: Column(
                  children: [
                    Icon(
                      Icons.outgoing_mail,
                      color: Colors.green,
                      size: 100,
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Thank You For Your Request.",
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    SizedBox(height: 30),
                    Text(
                        "We will contact you once your \n       registration is approved",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 20)),
                    SizedBox(height: 60),
                    FlatButton(
                        color: Colors.deepOrange,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                        },
                        child: Text(
                          "Main Page",
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
