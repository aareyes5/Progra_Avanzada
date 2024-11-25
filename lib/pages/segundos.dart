import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';



class Segundos extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SegundosState();
}

class SegundosState extends State<Segundos>{

  //codigo

  final TextEditingController _controller = TextEditingController();
  String result = "";

  void calcularSegundosRestantes() {
    final tiempo = int.tryParse(_controller.text) ?? -1;
    if (tiempo < 0) {
      setState(() {
        result = "El tiempo debe ser mayor o igual a cero.";
      });
    } else {
      final segundosRestantes = 60 - (tiempo % 60);
      setState(() {
        result = "Segundos restantes para el siguiente minuto: ${segundosRestantes == 60 ? 0 : segundosRestantes}";

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Segundos restantes para el siguiente minuto:"),
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
        appBar: AppBar(title: Text("Segundos Restantes")),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Tiempo en segundos"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: calcularSegundosRestantes,
                child: Text("Calcular"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black, // Color de fondo
                    foregroundColor: Colors.white), // Color del texto
              ),
              //Text(result),
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