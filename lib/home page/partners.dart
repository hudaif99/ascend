import 'dart:convert';

import 'package:ascend/model/homePartners.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;

class PartnersPage extends StatefulWidget {
  const PartnersPage({Key? key}) : super(key: key);

  @override
  _PartnersPageState createState() => _PartnersPageState();
}

class _PartnersPageState extends State<PartnersPage> {
  List<Partners> partners = [];
  String url = "https://run.mocky.io/v3/8cc7ba95-0fb2-4a36-981d-3057c9d8befb";
  Future? objfuture;
  Future<ModelPartners> apiCall() async{
    ModelPartners? objPartners_model;
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200){
      var data = json.decode(response.body);
      objPartners_model = ModelPartners.fromJson(data);
      setState(() {
        for(int i = 0; i < objPartners_model!.partners!.length; i++){
          partners.add(objPartners_model.partners![i]);
        }
      });
    }
    return objPartners_model!;
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
                                  "Partners",
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
                              itemCount: partners.length,
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
                                              partners[i].image!,
                                              width: 90,
                                              height: 120,
                                              fit: BoxFit.fill,
                                            ),
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
                                                        partners[i].title!,
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
                                                      child: Text(partners[i].content!,overflow: TextOverflow.ellipsis,
                                                        textAlign: TextAlign.justify,
                                                        maxLines: 3,
                                                      )
                                                  ),
                                                  Container(
                                                    //  width: MediaQuery.of(context).size.width,
                                                    // alignment: Alignment.bottomLeft,
                                                    padding: EdgeInsets.only(
                                                        top: 10, left: 10),
                                                    child: Row(
                                                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: [
                                                        Icon(
                                                          Icons.mail,
                                                          size: 15,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                          partners[i].email!,
                                                          style: TextStyle(
                                                              fontSize: 13),
                                                        ),
                                                        Spacer(),
                                                        Container(
                                                          child: Row(
                                                            children: [
                                                              Icon(FontAwesomeIcons.globe,size: 15,),
                                                              SizedBox(width: 4,),
                                                              InkWell(
                                                                child: Text(partners[i].website!),
                                                              )
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
