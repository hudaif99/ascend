import 'dart:convert';

import 'package:ascend/home%20page/volunteer/filters.dart';
import 'package:ascend/model/home%20volunteer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;

import '../../homePage.dart';

class VolunteerWithUsPage extends StatefulWidget {
  const VolunteerWithUsPage({Key? key}) : super(key: key);

  @override
  _VolunteerWithUsPageState createState() => _VolunteerWithUsPageState();
}

class _VolunteerWithUsPageState extends State<VolunteerWithUsPage> {
  List<Volunteer> volunteer = [];
  String url = "https://run.mocky.io/v3/28c28fb7-08c1-49fc-8ab3-fad339385fcc";
  Future? objfuture;
  Future<ModelVolunteer> apiCall() async {
    ModelVolunteer? objvolunteer;
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      objvolunteer = ModelVolunteer.fromJson(data);
      setState(() {
        for (int i = 0; i < objvolunteer!.volunteer!.length; i++) {
          volunteer.add(objvolunteer.volunteer![i]);
        }
      });
    }
    return objvolunteer!;
  }

  @override
  void initState() {
    //TODO Impliment initState
    super.initState();
    objfuture = apiCall();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
                  },
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: const [
                    Icon(
                      FontAwesomeIcons.handsHelping,
                      size: 43,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Volunteer With Us",
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
          Expanded(
            child: ListView.builder(
                itemCount: volunteer.length,
                itemBuilder: (c, i) {
                  return Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(
                            left: 10, top: 20, right: 10, bottom: 0),
                        height: 230,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              // color: Colors.grey
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Text(volunteer[i].title!,
                                    style: TextStyle(
                                        color: Color(0xff0d5222),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17)),
                                FlatButton(
                                  color: Colors.deepOrange,
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>VolunteerWithUsPage2()));
                                  },
                                  child: Text("Apply",
                                      style: TextStyle(
                                        color: Colors.white,
                                      )),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(volunteer[i].schoolname!,
                                style: TextStyle(
                                    color: Color(0xff070807),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12)),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              volunteer[i].school!,
                              style: TextStyle(fontSize: 10),
                            ),
                            SizedBox(height: 5),
                            Divider(
                              color: Colors.black54,
                            ),
                            SizedBox(height: 5),



                            Row(
                              children: [
                                Text("Class Gender"),
                                SizedBox(width: 100),
                                Text(volunteer[i].gender!,
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
                                Text(volunteer[i].time!,
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
                                  child: Text(volunteer[i].date!,
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
                                Container(child: Text("Program  End Date")),
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
                                Text(volunteer[i].days!,
                                    style: TextStyle(
                                        color: Color(0xff070807),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11)),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
