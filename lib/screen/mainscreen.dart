import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tourism_ui_clone/screen/homescreen.dart';
import 'package:tourism_ui_clone/widgets/buttons.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 150,
              width: 150,
              child: Image.asset("assets/images/s1.png")
            ),
          ),
          SizedBox(height: 100,),
          ElevatedButton(
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
            }, 
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              minimumSize: Size(150, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )
            ),
            child: Text(
              "Login",
              style: TextStyle(
                color: Colors.white
              ),
            ),
          ),
          SizedBox(height: 20,),
          Text("- OR -"),
          SizedBox(height: 20,),
          MainButton(
            bgcolor: Colors.blue, 
            ontap: (){}, 
            label: "Login with FaceBook", 
            icon: FontAwesomeIcons.facebook, 
            width: 90,
          ),
          SizedBox(height: 20,),
          MainButton(
            bgcolor: Colors.lightBlue, 
            ontap: (){}, 
            label: "Login with Twitter", 
            icon: FontAwesomeIcons.twitter, 
            width: 110,
          ),
          SizedBox(height: 20,),
          MainButton(
            bgcolor: Colors.red, 
            ontap: (){}, 
            label: "Login with Google", 
            icon: FontAwesomeIcons.google, 
            width: 112,
          ),
        ],
      ),
    );
  }
}