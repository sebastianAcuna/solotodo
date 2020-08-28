

import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {

  



  // Widget _pageSelector(int index){

  //   switch(index){
  //     case 0:
  //       return _perfilPage;
  //     case 1:
  //       return HomePage();
  //     case 2:
  //       return _searchPage;
  //     default:
  //       return HomePage();
  //   }
  // }
  
  @override
  Widget build(BuildContext context) {
  
    
    return Scaffold(
      appBar: AppBar(
        title: Text('SoloNada'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(240, 240, 240, 1),
      ),
      body: Container(
        color: Colors.white,
      ),
      
      
    );
  }

}