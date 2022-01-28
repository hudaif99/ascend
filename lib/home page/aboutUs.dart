import 'package:ascend/home%20page/aboutUs2.dart';
import 'package:ascend/homePage.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  // bool _hasBeenPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [Container(
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
                                  color: Colors.green,
                                  // color: _hasBeenPressed ? Colors.grey : Colors.green,
                                  onPressed: () {
                                    // setState(() {
                                    //   _hasBeenPressed = true;
                                    // });
                                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutUsPage()));
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
                                  color: Colors.grey,
                                  // color: _hasBeenPressed ? Colors.green : Colors.grey,
                                  onPressed: () {
                                    // setState(() {
                                    //   _hasBeenPressed = false;
                                    // });
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutUsPage2()));

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
                      height: 510,
                      margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                        )
                      ]),
                      padding: EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "WHO WE ARE",
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          Text("""Lorem ipsum dolor sit amet, consectetur adipiscing elit.torquent per conubia nostra, per inceptos himenaeos. Suspendisse non pulvinar justo. Vivamus ut porta lectus. Morbi ultrices nec orci id aliquam. Aenean sed turpis est. Nulla ornare rhoncus sapien, non consequat nulla consequat placerat. Proin non lacus sapien. Aenean blandit enim sit amet ante tempus consequat.

                            Vestibulum posuere ac augue in iaculis. Nulla facilisi. Morbi eget sagittis nibh. Curabitur id nisi erat. Nulla volutpat, magna ac porttitor pulvinar, ipsum quam pretium sem, vel dictum leo justo at odio. Phasellus quis mattis orci, rhoncus interdum leo. Donec ac tempus purus. Vestibulum consectetur fringilla risus, eu rutrum nisi laoreet ut. In quis molestie lorem. Nulla pulvinar luctus lorem, a dignissim velit convallis at. Quisque ac ullamcorper odio.
                            """,maxLines: 10,textAlign: TextAlign.justify,),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 50,
                            height: 250,
                            child: Image.asset(
                              "assets/images/about.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),

              ],
            ),
          ),]
      ),
    );
  }
}
