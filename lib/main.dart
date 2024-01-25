import 'package:flutter/material.dart';
import 'package:tourism_ui_clone/screen/mainscreen.dart';
import 'package:tourism_ui_clone/screen/placedetails.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Set your initial route if needed
      routes: {
        '/': (context) => MainScreen(),
        'placedetails': (context) => PlaceDetails(),
        // ... other routes
      },
    );
  }
}
