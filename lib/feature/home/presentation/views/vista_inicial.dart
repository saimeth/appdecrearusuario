import 'package:flutter/material.dart';

class Vista_inicial extends StatelessWidget {
  const Vista_inicial({
    super.key,
  });

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
    
          child: Container(
            padding: const EdgeInsets.all(20),
            width: 300,
            height: 400,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFb6f3c9), Color(0xFF4766f4)], 
                begin: Alignment.topLeft,             
                end: Alignment.bottomRight,           
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 7,
                ),
              ],
            ),
    
    
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Crear Usuario',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 124, 124, 124),
                  ),
                ),
                SizedBox(height: 20),
    
    
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Nombre',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 40),
    
    
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Correo',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 40),
    
    
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 30),
    
    
                ElevatedButton(
                  onPressed: () {}, 
                  child: const Text("Registrarse"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 132, 155, 254)),
                  foregroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 33, 33, 33)),
                ),
                )
              ],
            ), 
          ),
      )
    );
  }
}