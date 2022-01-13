import 'dart:convert';

import 'package:ascend/model/home%20news.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<News> news = [];
  String url = "https://run.mocky.io/v3/6b01037d-7b23-41b6-b8aa-4f2afa6b7544";
  Future? objfuture;
  Future<ModelNews> apiCall() async{
    ModelNews? objHome_model;
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200){
      var data = json.decode(response.body);
      objHome_model = ModelNews.fromJson(data);
      print(response.body);
      setState(() {
        for(int i=0;i<objHome_model!.news!.length;i++){
          news!.add(objHome_model.news![i]);
        }
      });
    }
    return objHome_model!;
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    objfuture = apiCall();
  }
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
                    children: [
                      Icon(
                        FontAwesomeIcons.newspaper,
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
                        "News",
                        style: TextStyle(color: Colors.white, fontSize: 25),
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
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQr-yDUt8awy1H9OPt5w2HmXeocSXEXEsVsRA&usqp=CAU",width: 75,height: 120,fit: BoxFit.cover,),
                      Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                      //  crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.topCenter,
                            padding: EdgeInsets.only(left: 10,bottom: 5),
                              child: Text("head",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),textAlign: TextAlign.left,)
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            child: RichText(
                              text: TextSpan(
                                text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                              ),
                            ),
                          ),
                          Container(
                            // alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(top: 10,left: 10),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.calendar_today, size: 15,),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("10/10/2010",style: TextStyle(fontSize: 13),),
                                SizedBox(
                                  width: 199,
                                ),
                                Container(
                                  child: TextButton(onPressed: (){},
                                    style: TextButton.styleFrom(
                                        primary: Colors.white,
                                        backgroundColor: Colors.deepOrange,
                                        minimumSize: const Size(40, 30),
                                        elevation: 20),
                                  child: Text("More"),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
