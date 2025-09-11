import 'package:flutter/material.dart';

class Vista_home extends StatelessWidget{
  const Vista_home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 208, 225, 238), 
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Registro de Usuario'),
        backgroundColor: const Color.fromARGB(255, 194, 204, 252),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGVyc29uYXxlbnwwfHwwfHx8MA%3D%3D",
             width: 200,   
              height: 200, 
              fit: BoxFit.cover
            ),
            const SizedBox(height: 40),
            Container(
              height: 270,
              width: 400,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 194, 204, 252),
                borderRadius: BorderRadius.circular(20),
              ),
            )
          ],
        ),
      )
    );
  }
}