import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text('HealTether'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('welcome To HealTether activity completed by Maaz Ansari',
                    style:  TextStyle(
                    fontSize: 20,
                    // fontWeight: FontWeight.bold,
                ),
              ),
      ),
    );
  }
}
