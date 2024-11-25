import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';



class Area extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AreaState();
}

class AreaState extends State<Area>{
  //codigo
  final TextEditingController _baseController = TextEditingController();
  final TextEditingController _alturaController = TextEditingController();
  String result = "";

  void calcularArea() {
    final base = double.tryParse(_baseController.text) ?? -1;
    final altura = double.tryParse(_alturaController.text) ?? -1;

    if (base <= 0 || altura <= 0) {
      setState(() {
        result = "Los valores deben ser mayores a cero.";
      });
    } else {
      final area = (base * altura) / 2;
      setState(() {
        result = "El área del triángulo es: $area";
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("El área del triángulo es:"),
              content: Text(result),
              actions: [
                TextButton(
                  child: Text("Cerrar"),
                  style: TextButton.styleFrom(

                  foregroundColor: Colors.black, // Color del texto
                  ),
                  onPressed: () {
                    Navigator.of(context).pop(); // Cerrar el diálogo
                  },
                ),
              ],
            );
          },
        );




      });
    }
  }




  //visual

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Área de un Triángulo")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _baseController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Base del triángulo"),
            ),
            TextField(
              controller: _alturaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Altura del triángulo"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: calcularArea,
              child: Text("Calcular"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Color de fondo
                  foregroundColor: Colors.white), // Color del texto
            ),
           // Text(result),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Home'),
              onPressed: (){
                Navigator.pushNamed(context, '/');
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Color de fondo
                  foregroundColor: Colors.black), // Color del texto
            ),


          ],
        ),
      ),
    );
  }
}