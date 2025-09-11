import 'package:flutter/material.dart';

class Vista_carga extends StatelessWidget {
  const Vista_carga({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 208, 225, 238),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://i.imgur.com/M8hW3g1.png",
             width: 200,   
              height: 200, 
              fit: BoxFit.cover
            ),
            const SizedBox(height: 10),
            Text( "por favor espere...",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 65, 64, 64),
              ),
            ),
            const SizedBox(height: 40),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 140, 160, 250)),
            ),
          ]
        )
      )
    );
  }
}