import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:solotodo/pages/home_page.dart';
import 'package:solotodo/pages/tabs_pages.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: TabPage(),
     /*  routes: {
        'splash_screen' : (BuildContext context) => HomePage(),
        'login_page' : (BuildContext context) => HomePage(),
        'home_page' : (BuildContext context) => HomePage(),
        'perfil_page' : (BuildContext context) => HomePage(),
        'cotizacion_page' : (BuildContext context) => HomePage(),
        'search_page' : (BuildContext context) => HomePage(),
        'detalle_page' : (BuildContext context) => HomePage(),

      }, */
    );
  }
}