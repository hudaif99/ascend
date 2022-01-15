import 'dart:convert';

import 'package:ascend/model/homeGallery.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;

class GalleryPage extends StatefulWidget {
  const GalleryPage({Key? key}) : super(key: key);

  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  List<Gallery> gallery = [];
  String url = "https://run.mocky.io/v3/46d4f606-8977-4f5b-a69b-89c7f4c223eb";
  Future? objfuture;
  Future<ModelGallery> apiCall() async {
    ModelGallery? objHome_model;
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      objHome_model = ModelGallery.fromJson(data);
      print(response.body);
      setState(() {
        for (int i = 0; i < objHome_model!.gallery!.length; i++) {
          gallery.add(objHome_model.gallery![i]);
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
                          padding: const EdgeInsets.only(top: 40, left: 20),
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
                                    FontAwesomeIcons.images,
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
                                    "Media Gallery",
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
                                itemCount: gallery.length,
                                itemBuilder: (c, i) {
                                  return Card(
                                    child: Container(
                                      //width: MediaQuery.of(context).size.width,
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Image.network(
                                                gallery[i].image!,
                                                width: 100,
                                                height: 120,
                                                fit: BoxFit.cover,
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.start,
                                                //  crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // width: MediaQuery.of(context).size.width,
                                                      alignment:
                                                      Alignment.topCenter,
                                                      padding: EdgeInsets.only(
                                                          left: 10, bottom: 5),
                                                      child: Text(
                                                        gallery[i].title!,
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                          FontWeight.bold,
                                                        ),
                                                        textAlign: TextAlign.left,
                                                      )),
                                                  Container(
                                                    width: MediaQuery.of(context).size.width,
                                                    padding:
                                                    EdgeInsets.only(left: 10),
                                                    child: RichText(
                                                      text: TextSpan(
                                                          text: gallery[i].content!),
                                                    ),
                                                  ),
                                                  Container(
                                                    //  width: MediaQuery.of(context).size.width,
                                                    alignment: Alignment.bottomLeft,
                                                    padding: EdgeInsets.only(
                                                        top: 10, left: 10),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                      children: [
                                                        Icon(
                                                          Icons.calendar_today,
                                                          size: 15,
                                                        ),
                                                        // SizedBox(
                                                        //   width: 5,
                                                        // ),
                                                        Text(
                                                          gallery[i].date!,
                                                          style: TextStyle(
                                                              fontSize: 13),
                                                        ),
                                                        SizedBox(
                                                          width: 199,
                                                        ),
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
                                                            child: Text("View Gallery"),
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
                                    ),
                                  );
                                }))
                      ],
                    ),
                  ),
                ],
              );
            } else {
              return Container(child: Center(child: CircularProgressIndicator()));
            }
          },
        ));
  }
}
