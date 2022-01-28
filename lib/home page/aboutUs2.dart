import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'aboutUs.dart';

class AboutUsPage2 extends StatefulWidget {
  const AboutUsPage2({Key? key}) : super(key: key);

  @override
  _AboutUsPage2State createState() => _AboutUsPage2State();
}

class _AboutUsPage2State extends State<AboutUsPage2> {
  // bool _hasBeenPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>const AboutUsPage()));
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: const [
                        Icon(
                          Icons.mode_comment_outlined,
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
                          "About Us",
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
                margin: EdgeInsets.only(left: 10),
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 0, top: 10, right: 0),
                            // height: 30,
                            // width: 100,
                            // color: Colors.grey,

                            child: Center(
                              child: FlatButton(
                                minWidth: 100,
                                height: 35,
                               color: Colors.grey,
                               // color: _hasBeenPressed ? Colors.grey : Colors.grey,
                                onPressed: () {
                                  // setState(() {
                                  //   _hasBeenPressed = false;
                                  // });
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutUsPage()));
                                },
                                child: Text(
                                  "Who we are",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            margin:
                            EdgeInsets.only(left: 0, top: 10, right: 15),
                            // color: Colors.green,
                            // height: 30,
                            // width: 150,
                            child: Center(
                              child: FlatButton(
                                minWidth: 100,
                                height: 35,
                                color: Colors.green,
                                // color: _hasBeenPressed ? Colors.green : Colors.grey,
                                onPressed: () {
                                  // setState(() {
                                  //   _hasBeenPressed = true;
                                  // });
                                },
                                child: Text(
                                  "Board Members",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 1,
                        color: Colors.green,
                        thickness: 3,
                        endIndent: 10,
                      ),
                    ],
                  ),
                ),
              ),
              Stack(
                children: [
                  Container(
                    // height: 599,
                    margin: EdgeInsets.only(left: 10, right: 10, bottom: 0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                      )
                    ]),
                    padding: EdgeInsets.only(left: 15,right: 15,top: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Image.asset( "assets/images/john_doich.png",height:120,width: 110,fit: BoxFit.fill,),
                            SizedBox(width: 10,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("John Doich",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 17)),
                                  Text("Position",style: TextStyle(fontSize: 12,),),
                                  SizedBox(height: 3,),
                                  Text("Lorem ipusm dolor sit amet, consectetur adipiscing elit.Duis nec imprerdiet dolor. Integer laoreet fermentum magna, ac fegiat eros luctus as,Lorem ipusm dolor sit amet,consectetur adipisicing elit Duis nec imprerdiet dolor. Integer laoreet fermentum magna,ac fegiat eros luctus ac. ",style: TextStyle(
                                      fontSize: 14
                                  ),textAlign: TextAlign.justify,maxLines: 4,),

                                ],
                              ),
                            )

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(alignment: Alignment.bottomRight, color:Colors.green,child: FlatButton(onPressed: (){}, child: Text("More",style: TextStyle(color: Colors.white),)))
                          ],
                        ),
                        Divider(
                          color: Colors.green,
                          // thickness: 3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Image.asset( "assets/images/john_doich.png",height:120,width: 110,fit: BoxFit.fill,),
                            SizedBox(width: 10,),
                            Expanded(
                              child: Column(

                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("John Doich",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 17)),
                                  Text("Position",style: TextStyle(fontSize: 12,),),
                                  SizedBox(height: 3,),
                                  Text("Lorem ipusm dolor sit amet, consectetur adipiscing elit.Duis nec imprerdiet dolor. Integer laoreet fermentum magna, ac fegiat eros luctus as,Lorem ipusm dolor sit amet,consectetur adipisicing elit Duis nec imprerdiet dolor. Integer laoreet fermentum magna,ac fegiat eros luctus ac. ",style: TextStyle(
                                      fontSize: 14
                                  ),textAlign: TextAlign.justify,maxLines: 4,),

                                ],
                              ),
                            )

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(alignment: Alignment.bottomRight, color:Colors.green,child: FlatButton(onPressed: (){}, child: Text("More",style: TextStyle(color: Colors.white),)))
                          ],
                        ),
                        Divider(
                          color: Colors.green,
                          // thickness: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Image.asset( "assets/images/john_doich.png",height:120,width: 110,fit: BoxFit.fill,),
                            SizedBox(width: 10,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("John Doich",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 17)),
                                  Text("Position",style: TextStyle(fontSize: 12,),),
                                  SizedBox(height: 3,),
                                  Text("Lorem ipusm dolor sit amet, consectetur adipiscing elit.Duis nec imprerdiet dolor. Integer laoreet fermentum magna, ac fegiat eros luctus as,Lorem ipusm dolor sit amet,consectetur adipisicing elit Duis nec imprerdiet dolor. Integer laoreet fermentum magna,ac fegiat eros luctus ac. ",style: TextStyle(
                                      fontSize: 14
                                  ),textAlign: TextAlign.justify,maxLines: 4,),

                                ],
                              ),
                            )

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(alignment: Alignment.bottomRight, color:Colors.green,child: FlatButton(onPressed: (){}, child: Text("More",style: TextStyle(color: Colors.white),)))
                          ],
                        ),
                        Divider(
                          color: Colors.green,
                          // thickness: 3,
                        ),
                      ],
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),]
      ),
    );
  }
}

//mock api : https://run.mocky.io/v3/73fbd8db-4c8f-482a-98d3-d1c33922bcc2