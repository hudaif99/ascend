import 'dart:convert';

import 'package:ascend/home%20page/programs2.dart';
import 'package:ascend/model/home%20programs.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;

import '../homePage.dart';

class ProgramsPage extends StatefulWidget {
  const ProgramsPage({Key? key}) : super(key: key);

  @override
  _ProgramsPageState createState() => _ProgramsPageState();
}

class _ProgramsPageState extends State<ProgramsPage> {
  List<Programs> programs = [];
  String url = "https://run.mocky.io/v3/e688b660-123e-41dd-bb63-a222e06b46d4";
  Future? objfuture;
  Future<ModelPrograms> apiCall() async {
    ModelPrograms? objHome_model;
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      objHome_model = ModelPrograms.fromJson(data);
      //   print(response.body);
      setState(() {
        for (int i = 0; i < objHome_model!.programs!.length; i++) {
          programs.add(objHome_model.programs![i]);
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
        body: FutureBuilder(
          future: objfuture,
          builder: (context, snap) {
            if (snap.hasData) {
              return Column(
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
                              Column(
                                children: const [
                                  Icon(
                                    FontAwesomeIcons.graduationCap,
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
                                    "Programs",
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
                                itemCount: programs.length,
                                itemBuilder: (c, i) {
                                  return Card(
                                    child: Container(
                                      //   width: double.infinity,
                                      padding: const EdgeInsets.all(20),
                                      child: Row(
                                        children: [
                                          Image.network(
                                            programs[i].image!,
                                            width: 100,
                                            height: 120,
                                            fit: BoxFit.cover,
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Column(
                                              // mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // width: MediaQuery.of(context).size.width,
                                                  //   alignment: Alignment.topCenter,
                                                    padding: const EdgeInsets.only(
                                                        left: 10, bottom: 5),
                                                    child: Text(
                                                      programs[i].title!,
                                                      style: const TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                      ),
                                                      //   textAlign: TextAlign.left,
                                                    )),
                                                Container(
                                                  padding:
                                                  const EdgeInsets.only(left: 10),
                                                  child: Flexible(
                                                    child: Text(programs[i].content!,overflow: TextOverflow.ellipsis,
                                                      textAlign: TextAlign.justify,
                                                      maxLines: 4,),
                                                  ),
                                                ),
                                                Container(
                                                  // width: MediaQuery.of(context).size.width,
                                                  //alignment: Alignment.bottomLeft,
                                                  padding: const EdgeInsets.only(
                                                      top: 10, left: 10),
                                                  child: Row(
                                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      // Text(
                                                      //   gallery[i].date!,
                                                      //   style: const TextStyle(
                                                      //       fontSize: 13),
                                                      // ),
                                                      // SizedBox(
                                                      //   width: 190,
                                                      // ),
                                                      const Spacer(),
                                                      Container(
                                                        alignment: Alignment.centerRight,
                                                        child: TextButton(
                                                          onPressed: () {
                                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProgramsPage2()));

                                                          },
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
                                                          child: const Text("More"),
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
                                    ),
                                  );
                                }
                            )
                        )
                      ],
                    ),
                  ),
                ],
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        )
    );
  }
}
