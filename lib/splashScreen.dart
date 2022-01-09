import 'package:ascend/firstPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetofirstpage();
  }
  _navigatetofirstpage()async{
    await Future.delayed(Duration(milliseconds: 1500),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FirstPage()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),),
       // color: Color(0xFF33935C),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(FontAwesomeIcons.atlassian,color: Colors.white,size: 100,),
            SizedBox(
              height: 10,
            ),
            Text("Ascend",style: TextStyle(fontSize: 35,color: Colors.white,),),
          ],
        ),
      ),
    );
  }
}
