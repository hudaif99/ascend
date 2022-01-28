import 'dart:convert';

import 'package:ascend/model/homeMyPrograms.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../homePage.dart';

class MyProgramsPage extends StatefulWidget {
  const MyProgramsPage({Key? key}) : super(key: key);

  @override
  _MyProgramsPageState createState() => _MyProgramsPageState();
}

class _MyProgramsPageState extends State<MyProgramsPage> {
  List<Program> program = [];
  String url = "https://run.mocky.io/v3/345f3ee0-dde9-405f-9296-0b4e3ac826ec";
  Future? objfuture;
  Future<ModelPrograms> apiCall() async{
    ModelPrograms? objPrograms_model;
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200){
      var data = json.decode(response.body);
      objPrograms_model = ModelPrograms.fromJson(data);
      setState(() {
        for(int i = 0; i < objPrograms_model!.program!.length; i++){
          program.add(objPrograms_model.program![i]);
        }
      });
    }
    return objPrograms_model!;
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
      body: FutureBuilder(
        future: objfuture,
        builder: (context, snap){
          if (snap.hasData){
            return Column(
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
                        children: [
                          Icon(
                            Icons.format_list_numbered,
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
                            "My Programs",
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
                Expanded(child: ListView.builder(
                    itemCount: program.length,
                    itemBuilder: (c, i){
                      return Card(
                        child: Container(
                          //width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(30),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // width: MediaQuery.of(context).size.width,
                                            alignment:
                                            Alignment.topLeft,
                                            padding: EdgeInsets.only(
                                                left: 10, bottom: 5),
                                            child: Text(
                                              program[i].title!,
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight:
                                                FontWeight.bold,
                                              ),
                                              // textAlign: TextAlign.justify,
                                              maxLines: 2,
                                              // overflow: TextOverflow.ellipsis,
                                            )),
                                        Container(
                                          // width: MediaQuery.of(context).size.width,
                                            padding:
                                            EdgeInsets.only(left: 10),
                                            child: Text(program[i].content!,overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.justify,
                                              maxLines: 3,
                                            )
                                        ),
                                        SizedBox(height: 10,),
                                        Container(
                                          child: Row(
                                            children: [
                                              SizedBox(width: 8,),
                                              Icon(Icons.location_on,size: 13,),
                                              Text(program[i].location!,style: TextStyle(fontSize: 12),)
                                            ],
                                          ),
                                        ),
                                        Container(
                                          //  width: MediaQuery.of(context).size.width,
                                          // alignment: Alignment.bottomLeft,
                                          padding: EdgeInsets.only(
                                              top: 10, left: 10),
                                          child: Row(
                                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              const Icon(
                                                Icons.date_range,
                                                size: 13,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                program[i].date!,
                                                style: const TextStyle(
                                                    fontSize: 12),
                                              ),
                                              Spacer(),
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Icon(Icons.access_time,size: 13,),
                                                    SizedBox(width: 4,),
                                                    Text(program[i].duration!,style: TextStyle(fontSize: 12),)
                                                  ],
                                                ),
                                              ),
                                              // SizedBox(
                                              //   width: 199,
                                              // ),
                                              Spacer(),
                                              Container(
                                                child: TextButton(
                                                  onPressed: () {},
                                                  style: TextButton.styleFrom(
                                                      primary:
                                                      Colors.white,
                                                      backgroundColor:
                                                      Colors
                                                          .deepOrange,
                                                      minimumSize:
                                                      const Size(
                                                          40, 30),
                                                      elevation: 20),
                                                  child: Text("More"),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }))
              ],
            );
          }
          else {
            return Container(child: Center(child: CircularProgressIndicator()));
          }
        },
      ),
    );
  }
}
