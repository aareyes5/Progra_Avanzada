import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'pages/principal.dart';
import 'pages/pares_impares.dart';
import 'pages/area.dart';
import 'pages/segundos.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //quitar el banner de debug
      title: 'Navegación por rutas',
      initialRoute: '/',
      routes: {
        '/' : (context) => Principal() ,//ruta inicial
        '/Segundos': (context) => Segundos(), //ruta de la pantalla de inicio
        '/Area': (context) => Area(), //ruta de la pantalla de navegación por rutas
        '/Par_Impar': (context) => Pares_Impares(), //ruta de la pantalla de navegación por rutas
      },  //routes
    );
  }
}