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
            child: SizedBox(
              height: 150,
              width: 150,
              child: Image.asset("assets/images/s1.png")
            ),
          ),
          const SizedBox(height: 100,),
          ElevatedButton(
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
            }, 
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 31, 140, 230),
              minimumSize: const Size(150, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )
            ),
            child: const Text(
              "Log in",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14
              ),
            ),
          ),
          const SizedBox(height: 20,),
          const Text("- OR -"),
          const SizedBox(height: 20,),
          MainButton(
            bgcolor: const Color.fromARGB(255, 47, 105, 204), 
            ontap: (){}, 
            label: "Login with FaceBook", 
            icon: FontAwesomeIcons.facebook, 
            width: 90,
          ),
          const SizedBox(height: 20,),
          MainButton(
            bgcolor: const Color.fromARGB(255, 57, 178, 235), 
            ontap: (){}, 
            label: "Login with Twitter", 
            icon: FontAwesomeIcons.twitter, 
            width: 110,
          ),
          const SizedBox(height: 20,),
          MainButton(
            bgcolor: const Color.fromARGB(255, 182, 35, 24), 
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