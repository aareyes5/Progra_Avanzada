import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

class Pares_Impares extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Pares_ImparesState();
}

class Pares_ImparesState extends State<Pares_Impares> {
  // Código
  final TextEditingController _controller = TextEditingController();

  void determinarParImpar() {
    final numero = int.tryParse(_controller.text) ?? 0;
    final resultado = numero % 2 == 0 ? "El número es par." : "El número es impar.";

    // Mostrar alerta con el resultado
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Resultado"),
          content: Text(resultado),
          actions: [
            TextButton(
              child: Text("Cerrar"),
              onPressed: () {
                Navigator.of(context).pop(); // Cerrar el diálogo
              },
            ),
          ],
        );
      },
    );
  }

  // Visual
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Par o Impar")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Ingrese un número"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: determinarParImpar,
              child: Text("Determinar"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, // Color de fondo
                foregroundColor: Colors.white, // Color del texto
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Home'),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Color de fondo
                foregroundColor: Colors.black, // Color del texto
              ),
            ),
          ],
        ),
      ),
    );
  }
}
