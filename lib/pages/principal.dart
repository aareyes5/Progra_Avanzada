import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';



class Principal extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PrincipalState();
}

class PrincipalState extends State<Principal>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Principal'),
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('Pares e Impares'),
              onPressed: (){
                Navigator.pushNamed(context, '/Par_Impar');
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Color de fondo
                  foregroundColor: Colors.white), // Color del texto
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Area'),
              onPressed: (){
                Navigator.pushNamed(context, '/Area');
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Color de fondo
                  foregroundColor: Colors.white), // Color del texto
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Segundos'),
              onPressed: (){
                Navigator.pushNamed(context, '/Segundos');
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Color de fondo
                  foregroundColor: Colors.white), // Color del texto
            ),
          ],
        ),
      ),
    );
  }

}