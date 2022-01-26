
import 'package:ascend/dummyPage.dart';
import 'package:ascend/home%20page/aboutUs.dart';
import 'package:ascend/home%20page/gallery.dart';
import 'package:ascend/home%20page/news.dart';
import 'package:ascend/home%20page/partners.dart';
import 'package:ascend/home%20page/myPrograms.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              const AssetImage("assets/images/background.jpg"),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.4),
                              BlendMode.darken))),
                  //color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        FontAwesomeIcons.atlassian,
                        color: Colors.white,
                        size: 60,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Ascend",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                )
              ],
            ),
            // SizedBox(
            //   height: 6,
            // ),
            Container(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewsPage()));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              // gradient: LinearGradient(
                              //   begin: Alignment.topRight,
                              //   end: Alignment.bottomLeft,
                              //   colors: <Color>[
                              //     Color(0xFF265374),
                              //     Color(0xff4CA6AE)
                              //   ],
                              // ),
                              image: DecorationImage(
                                  image: const AssetImage(
                                      "assets/images/background.jpg"),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.7),
                                      BlendMode.darken)),
                            ),
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: MediaQuery.of(context).size.height / 6,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  alignment: Alignment(0.7, 0.8),
                                  child: Icon(
                                    FontAwesomeIcons.newspaper,
                                    size: 43,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 24,
                                ),
                                Container(
                                    alignment: Alignment(-0.8, 0),
                                    child: Text(
                                      "News",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 19),
                                    )),
                                SizedBox(
                                  height: 14,
                                )
                              ],
                            )),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GalleryPage()));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              // gradient: LinearGradient(
                              //   begin: Alignment.topRight,
                              //   end: Alignment.bottomLeft,
                              //   colors: <Color>[
                              //     Color(0xFF265374),
                              //     Color(0xff4CA6AE)
                              //   ],
                              // ),
                              image: DecorationImage(
                                  image: const AssetImage(
                                      "assets/images/background.jpg"),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.7),
                                      BlendMode.darken)),
                            ),
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: MediaQuery.of(context).size.height / 6,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  alignment: Alignment(0.7, 0.8),
                                  child: Icon(
                                    FontAwesomeIcons.images,
                                    size: 43,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                    alignment: Alignment(-0.8, 0),
                                    child: Text(
                                      "Media\nGallery",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 19),
                                    )),
                                SizedBox(
                                  height: 3,
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AboutUsPage()));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              // gradient: LinearGradient(
                              //   begin: Alignment.topRight,
                              //   end: Alignment.bottomLeft,
                              //   colors: <Color>[
                              //     Color(0xFF265374),
                              //     Color(0xff4CA6AE)
                              //   ],
                              // ),
                              image: DecorationImage(
                                  image: const AssetImage(
                                      "assets/images/background.jpg"),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.7),
                                      BlendMode.darken)),
                            ),
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: MediaQuery.of(context).size.height / 6,
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  alignment: const Alignment(0.7, 0.8),
                                  child: const Icon(
                                    Icons.mode_comment_outlined,
                                    size: 43,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                Container(
                                    alignment: const Alignment(-0.8, 0),
                                    child: const Text(
                                      "About Us",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 19),
                                    )),
                                const SizedBox(
                                  height: 14,
                                )
                              ],
                            )),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DummyPage()));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              // gradient: LinearGradient(
                              //   begin: Alignment.topRight,
                              //   end: Alignment.bottomLeft,
                              //   colors: <Color>[
                              //     Color(0xFF265374),
                              //     Color(0xff4CA6AE)
                              //   ],
                              // ),
                              image: DecorationImage(
                                  image: const AssetImage(
                                      "assets/images/background.jpg"),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.7),
                                      BlendMode.darken)),
                            ),
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: MediaQuery.of(context).size.height / 6,
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  alignment: Alignment(0.7, 0.8),
                                  child: Icon(
                                    FontAwesomeIcons.graduationCap,
                                    size: 43,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 24,
                                ),
                                Container(
                                    alignment: Alignment(-0.8, 0),
                                    child: Text(
                                      "Programs",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 19),
                                    )),
                                SizedBox(
                                  height: 14,
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PartnersPage()));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              // gradient: LinearGradient(
                              //   begin: Alignment.topRight,
                              //   end: Alignment.bottomLeft,
                              //   colors: <Color>[
                              //     Color(0xFF265374),
                              //     Color(0xff4CA6AE)
                              //   ],
                              // ),
                              image: DecorationImage(
                                  image: const AssetImage(
                                      "assets/images/background.jpg"),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.7),
                                      BlendMode.darken)),
                            ),
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: MediaQuery.of(context).size.height / 6,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  alignment: Alignment(0.7, 0.8),
                                  child: Icon(
                                    FontAwesomeIcons.handshake,
                                    size: 43,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 24,
                                ),
                                Container(
                                    alignment: Alignment(-0.8, 0),
                                    child: Text(
                                      "Partners",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 19),
                                    )),
                                SizedBox(
                                  height: 14,
                                )
                              ],
                            )),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DummyPage()));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              // gradient: LinearGradient(
                              //   begin: Alignment.topRight,
                              //   end: Alignment.bottomLeft,
                              //   colors: <Color>[
                              //     Color(0xFF265374),
                              //     Color(0xff4CA6AE)
                              //   ],
                              // ),
                              image: DecorationImage(
                                  image: const AssetImage(
                                      "assets/images/background.jpg"),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.7),
                                      BlendMode.darken)),
                            ),
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: MediaQuery.of(context).size.height / 6,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  alignment: Alignment(0.7, 0.8),
                                  child: Icon(
                                    FontAwesomeIcons.handsHelping,
                                    size: 43,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                    alignment: Alignment(-0.8, 0),
                                    child: Text(
                                      "Voulanteer\nWith Us",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 19),
                                    )),
                                SizedBox(
                                  height: 2,
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyProgramsPage()));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              // gradient: LinearGradient(
                              //   begin: Alignment.topRight,
                              //   end: Alignment.bottomLeft,
                              //   colors: <Color>[
                              //     Color(0xFF265374),
                              //     Color(0xff4CA6AE)
                              //   ],
                              // ),
                              image: DecorationImage(
                                  image: const AssetImage(
                                      "assets/images/background.jpg"),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.7),
                                      BlendMode.darken)),
                            ),
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: MediaQuery.of(context).size.height / 6,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  alignment: Alignment(0.7, 0.8),
                                  child: Icon(
                                    Icons.format_list_numbered,
                                    size: 43,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 24,
                                ),
                                Container(
                                    alignment: Alignment(-0.8, 0),
                                    child: Text(
                                      "My Programs",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 19),
                                    )),
                                SizedBox(
                                  height: 14,
                                )
                              ],
                            )),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DummyPage()));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              // gradient: LinearGradient(
                              //   begin: Alignment.topRight,
                              //   end: Alignment.bottomLeft,
                              //   colors: <Color>[
                              //     Color(0xFF265374),
                              //     Color(0xff4CA6AE)
                              //   ],
                              // ),
                              image: DecorationImage(
                                  image: const AssetImage(
                                      "assets/images/background.jpg"),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.7),
                                      BlendMode.darken)),
                            ),
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: MediaQuery.of(context).size.height / 6,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  alignment: Alignment(0.7, 0.8),
                                  child: Icon(
                                    FontAwesomeIcons.phone,
                                    size: 43,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 24,
                                ),
                                Container(
                                    alignment: Alignment(-0.8, 0),
                                    child: Text(
                                      "Contact Us",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 19),
                                    )),
                                SizedBox(
                                  height: 14,
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
