// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mark2/screens/Myapp.dart';

class SplashScreen extends StatefulWidget{

  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState(){
    return _SplashScreen();
  }
}


class _SplashScreen extends State<SplashScreen> with SingleTickerProviderStateMixin{

  
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 6),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) =>MyApp(),
        )
      );
    });

  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(context){
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors:[
              Color.fromARGB(255, 8, 143, 254),
              Color.fromARGB(255, 4, 77, 180)
            ],

            begin: Alignment.topLeft,
            end: Alignment.bottomRight
            )
        ),
        child:  const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon(
              //   // Icons.local_drink_outlined,
              //   Icons.water_drop_outlined,
              //   size: 150,
              //   color: Color.fromARGB(255, 245, 246, 247),
              // ),
              // SizedBox(height: 10,),
              Text(
                // 'AquaScore',
                'flutter form app',
                style:  TextStyle(
                    color: Color.fromARGB(255, 247, 247, 247),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                ),
              ),
            ],
        ),
      ),
    );
  }
}