
import 'package:ascend/login.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 550,
            color: const Color(0xFF33935C),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Icon(FontAwesomeIcons.atlassian,color: Colors.white,size: 80,),
                SizedBox(
                  height: 10,
                ),
                Text("Ascend",style: TextStyle(fontSize: 25,color: Colors.white,),),
                SizedBox(
                  height: 25,
                ),
                Text("Welcome to Ascend", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
                SizedBox(
                  height: 8,
                ),
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit",style: TextStyle(color: Colors.white),)
              ],
            ),
          ),
          Container(margin: const EdgeInsets.only(top: 40,bottom: 20),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Choose Your Language",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Image.asset('assets/images/britain_flag.png'),
                      iconSize: 70,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                      },
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    IconButton(
                      icon: Image.asset('assets/images/indian_flag.png'),
                      iconSize: 70,
                      onPressed: () {},
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
