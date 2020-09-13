

import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {


  
  @override
  Widget build(BuildContext context) {
  
  List<String> categorias = ["Rendimiento", "60 FPS", "E-sport", "Streaming","Master Race"];
    
    return Scaffold(
      backgroundColor: Color.fromRGBO(235, 235, 235, 1),
      appBar: AppBar(
        title: Text('SoloNada'),
        centerTitle: true,
        // backgroundColor: Color.fromRGBO(240, 240, 240, 1),
      ),
      body:
          ListView.builder(
            
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(categorias[index], style: TextStyle(fontWeight: FontWeight.bold, ),),
                  Container(margin:EdgeInsets.only(top:16 / 4),height: 2,width: 30, color: Colors.black,)
                ],
              ),
            ),
          
      ),
    );
  }

}