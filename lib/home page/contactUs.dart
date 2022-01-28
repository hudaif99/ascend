import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../homePage.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  _ContactUsPageState createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
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
                      Icon(
                        FontAwesomeIcons.phone,
                        size: 32,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Contact",
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
                  padding: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(FontAwesomeIcons.phone,size: 16,),
                                SizedBox(width: 16,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Phone",style: TextStyle(color: Colors.black45),),
                                    SizedBox(height: 6,),
                                    Text("+91 98685444399",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                    SizedBox(height: 4,),
                                    Text("+91 98685444499",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))
                                  ],
                                )
                              ],
                            ),
                            Divider(
                              color: Colors.black26,
                            ),
                            SizedBox(height: 16,),
                            Row(
                              children: [
                                Icon(Icons.email,size: 20,),
                                SizedBox(width: 16,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Email",style: TextStyle(color: Colors.black45),),
                                    SizedBox(height: 6,),
                                    Text("email@company.com",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),

                                  ],
                                )
                              ],
                            ),
                            Divider(
                              color: Colors.black26,
                            ),
                            SizedBox(height: 16,),
                            Row(
                              children: [
                                Icon(Icons.location_on,size: 20,),
                                SizedBox(width: 16,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Address",style: TextStyle(color: Colors.black45),),
                                    SizedBox(height: 6,),
                                    Text("Govt HSS, Calicut",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                    SizedBox(height: 4,),
                                    Text("Auditorium number 3",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))
                                  ],
                                )
                              ],
                            ),
                            Divider(
                              color: Colors.black26,
                            ),
                            SizedBox(height: 10,),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.width - 271,
                              color: Colors.greenAccent,
                           //   child: ,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
