import 'package:ascend/sign%20up/registrationCompleted.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CorporateRegistrationPage2 extends StatefulWidget {
  const CorporateRegistrationPage2({Key? key}) : super(key: key);

  @override
  _CorporateRegistrationPage2State createState() => _CorporateRegistrationPage2State();
}

class _CorporateRegistrationPage2State extends State<CorporateRegistrationPage2> {

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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Corporate Registration",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Step 3/3",
                        style: TextStyle(color: Colors.yellow),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.only(top: 10,left: 37),
                      child: Text(
                        "Organization Name",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )),
                  Container(
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          icon: Icon(Icons.account_balance_outlined,color: Color(0xff19364A),),
                          hintText: 'Enter Organization Name',
                          hintStyle: TextStyle(color: Colors.black54,fontSize: 13)),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 10,left: 37),
                      child: Text(
                        "Website",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )),
                  Container(
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          icon: Icon(FontAwesomeIcons.globe,color: Color(0xff19364A),size: 20,),
                          hintText: 'Enter Website',
                          hintStyle: TextStyle(color: Colors.black54,fontSize: 13)),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 10,left: 37),
                      child: Text(
                        "Email",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )),
                  TextField(

                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        icon: Icon(Icons.email,color: Color(0xff19364A),),
                        hintText: 'Enter Email',
                        hintStyle: TextStyle(color: Colors.black54,fontSize: 13)),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  //  SizedBox(height: 10,),


                  SizedBox(height: 12,),
                  Container(
                      padding: EdgeInsets.only(top: 10,left: 37),
                      child: Text("Additional Info",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),
                  TextField(

                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        icon: Icon(FontAwesomeIcons.edit,color: Color(0xff19364A),),
                        // hintText: 'Enter Years of Experience',
                        hintStyle: TextStyle(color: Colors.black54,fontSize: 13)),
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                  ),
                ],
              ),
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  child: const Text(
                    "Back",
                    style: TextStyle(fontSize: 16),
                  ),
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.deepOrange,
                      minimumSize: const Size(80, 30),
                      elevation: 20),
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>IndividualRegistrationPage()));
                  },
                ),
                SizedBox(
                  width: 15,
                ),
                TextButton(
                  child: const Text(
                    "Register",
                    style: TextStyle(fontSize: 16),
                  ),
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.deepOrange,
                      minimumSize: const Size(80, 30),
                      elevation: 20),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationCompletedPage()));
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
