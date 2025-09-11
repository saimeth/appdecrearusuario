import 'package:flutter/material.dart';

class Vista_error extends StatelessWidget {
  const Vista_error({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 208, 225, 238),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://i.imgur.com/jBCj27A.png",
             width: 200,   
              height: 200, 
              fit: BoxFit.cover
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {}, 
              child: const Text("Reintentar"),
              style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 140, 160, 250)),
                foregroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 19, 19, 19)),
              ),
            )
          ]
        )
      )
    );
  }
}