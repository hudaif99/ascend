import 'dart:ui';

import 'package:flutter/material.dart';

class programofmore extends StatefulWidget {
  const programofmore({Key? key}) : super(key: key);

  @override
  _programofmoreState createState() => _programofmoreState();
}

class _programofmoreState extends State<programofmore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                // color: Colors.red,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: const AssetImage(
                    "assets/images/background.jpg",
                  ),
                  fit: BoxFit.cover,
                )),
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 50,
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
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(
                          left: 15, right: 15, bottom: 15, top: 170),
                      width: MediaQuery.of(context).size.width,
                      height: 500,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [BoxShadow(blurRadius: 4)]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Program Name",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Lorem ipusm dolor sit amet, consectetur adipiscing elit.Duis nec imprerdiet dolor. Integer laoreet fermentum magna, ac fegiat eros luctus as,Lorem ipusm dolor sit amet,consectetur adipisicing elit Duis nec imprerdiet dolor. Integer laoreet fermentum magna, ac fegiat eros luctus ac.",
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Lorem ipusm dolor sit amet, consectetur adipiscing elit.Duis nec imprerdiet dolor. Integer laoreet fermentum magna, ac fegiat eros luctus as,Lorem ipusm dolor sit amet,consectetur adipisicing elit Duis nec imprerdiet dolor. Integer laoreet fermentum magna,  ac fegiat eros luctus ac.",
                            textAlign: TextAlign.justify,
                          ),
                          Container(
                            //color: Colors.yellowAccent,
                            height: 250,
                            child: Center(
                              child: FlatButton(
                                color: Colors.deepOrange,
                                onPressed: () {},
                                child: Text(
                                  "Apply Now",
                                  style: TextStyle(color: Colors.white),
                                ),
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
    );
  }
}
