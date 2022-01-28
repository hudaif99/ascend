
import 'dart:ui';

import 'package:ascend/home%20page/programs.dart';
import 'package:flutter/material.dart';

import '../homePage.dart';

class ProgramsPage2 extends StatefulWidget {
  const ProgramsPage2({Key? key}) : super(key: key);

  @override
  _ProgramsPage2State createState() => _ProgramsPage2State();
}

class _ProgramsPage2State extends State<ProgramsPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15,top: 50),
                    // color: Colors.red,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage(
                            "assets/images/programs.jpg",
                          ),
                          fit: BoxFit.cover,
                        )),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          icon:  Icon(Icons.arrow_back),
                          iconSize: 30,
                          color: Colors.white,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProgramsPage()));
                          },
                        ),
                        // Icon(
                        //   Icons.group,
                        //   color: Colors.white,
                        //   size: 35,
                        // ),
                      ],
                    ),
                  ),
                  Stack(
                    overflow: Overflow.visible,
                    alignment: Alignment.bottomCenter,
                    children: [
                      Positioned(
                        child: Container(

                          padding: EdgeInsets.only(left: 15,right: 30,top: 15),
                          margin: EdgeInsets.only(
                              left: 15, right: 15, bottom: 15, top: 170),
                          width: MediaQuery.of(context).size.width,
                          height: 620,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [BoxShadow(blurRadius: 4)]),
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Program Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                              SizedBox(height: 10),
                              Text( "Lorem ipusm dolor sit amet, consectetur adipiscing elit.Duis nec imprerdiet dolor. Integer laoreet fermentum magna, ac fegiat eros luctus as,Lorem ipusm dolor sit amet,consectetur adipisicing elit Duis nec imprerdiet dolor. Integer laoreet fermentum magna, ac fegiat eros luctus ac.",
                              ),
                              SizedBox(height: 10),
                              Text( "Lorem ipusm dolor sit amet, consectetur adipiscing elit.Duis nec imprerdiet dolor. Integer laoreet fermentum magna, ac fegiat eros luctus as,Lorem ipusm dolor sit amet,consectetur adipisicing elit Duis nec imprerdiet dolor. Integer laoreet fermentum magna, ac fegiat eros luctus ac.",)
                              , Container(
                                //color: Colors.yellowAccent,
                                height: 275,
                                child: Center(
                                  child:FlatButton(
                                    color: Colors.deepOrange,
                                    onPressed: (){},
                                    child: Text("Apply Now",style: TextStyle(color: Colors.white),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
