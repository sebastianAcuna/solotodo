import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:solotodo/pages/home_page.dart';
import 'package:solotodo/pages/perfil_page.dart';
import 'package:solotodo/pages/search_page.dart';


class TabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final TabController _controller = TabController();

    return GetBuilder(
        init: _controller,
        builder: (_) => Scaffold(
          
          body: _Paginas(),
          bottomNavigationBar: _Navegacion(),
        ),
    );

  }
}

 class _Navegacion  extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return GetBuilder<TabController>(
          builder:(_) => CurvedNavigationBar(
            index: _.paginaActual,
            height: 50.0,
            items: <Widget>[
              Icon(Icons.account_circle, size: 30.0,color: Colors.white,),
              Icon(Icons.home, size: 30.0,color: Colors.white),
              Icon(Icons.search, size: 30.0,color: Colors.white)
            ],
            // color: Color.fromRGBO(63, 63, 63, 1),
            color: Colors.black,
            // onTap: ,
            onTap: (int index ) => _.paginaActual = index,
            // color
            buttonBackgroundColor: Colors.black,
            backgroundColor: Colors.white,
        ),
     );
   }
 }

  class _Paginas extends StatelessWidget{

    @override
    Widget build(BuildContext context){



      return GetBuilder<TabController>(
              
        builder: (_) => PageView(
          controller: _.pageController,
            physics: BouncingScrollPhysics(),
            onPageChanged: (i) => _.paginaActual = i,
            children: [
              PerfilPage(),
              HomePage(),
              SearchPage()
            ],
            
        ),
      );
    }
  }



  class TabController extends GetxController {


    PageController _pageController = PageController(initialPage: 1);


    @override
    void onInit(){
      super.onInit();
      print("instanciado");
    }

    int _paginaActual = 0;

    int get paginaActual => this._paginaActual;


    set paginaActual(int valor){
      this._paginaActual = valor; 

      _pageController.animateToPage(
        valor, 
        duration: Duration(milliseconds: 150), 
        curve: Curves.easeIn);
      update();
      }

    PageController get pageController => this._pageController;

  }

