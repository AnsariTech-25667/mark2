// shared preference --  https://www.youtube.com/watch?v=jljwoxLOuSA
// google auto signup method -- https://www.youtube.com/watch?v=JEqlf0uBRyE&t=10s
// FireBase setup for app -- https://www.youtube.com/watch?v=YVB94s21jD8

import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mark2/screens/splash_screen.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const WaterApp());
}


class WaterApp extends StatelessWidget{

  const WaterApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      // home: const TextButton(onPressed:() , child: "Second Screen"),
    );
  }
}
