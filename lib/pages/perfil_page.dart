import 'package:flutter/material.dart';
// import 'package:solotodo/pages/cotizacion_page.dart';


class PerfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _logingPage(context),
      ),
    //   floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    //   floatingActionButton: FloatingActionButton(
    //     child: Text('Ir detalle'),
    //     onPressed: () => Navigator.pushNamed(context, 'cotizacion_page'),
    // )
    );
  }


void _bottomSheet(BuildContext context){
  showModalBottomSheet(context: context, builder: (builder){


    return 
        ListView(
          children: [
          ListTile(title: Text('pc master race'), subtitle: Text('Proc:AMD, GPU:Nvidia'),leading: Icon(Icons.ac_unit), trailing: Text('\$600.0'),),
          ListTile(title: Text('pc master race'), subtitle: Text('Proc:AMD, GPU:Nvidia'),leading: Icon(Icons.ac_unit), trailing: Text('\$600.0'),),
          ListTile(title: Text('pc master race'), subtitle: Text('Proc:AMD, GPU:Nvidia'),leading: Icon(Icons.ac_unit), trailing: Text('\$600.0'),),
          ListTile(title: Text('pc master race'), subtitle: Text('Proc:AMD, GPU:Nvidia'),leading: Icon(Icons.ac_unit), trailing: Text('\$600.0'),),
          ListTile(title: Text('pc master race'), subtitle: Text('Proc:AMD, GPU:Nvidia'),leading: Icon(Icons.ac_unit), trailing: Text('\$600.0'),),
          ListTile(title: Text('pc master race'), subtitle: Text('Proc:AMD, GPU:Nvidia'),leading: Icon(Icons.ac_unit), trailing: Text('\$600.0'),),
          ListTile(title: Text('pc master race'), subtitle: Text('Proc:AMD, GPU:Nvidia'),leading: Icon(Icons.ac_unit), trailing: Text('\$600.0'),),
          ListTile(title: Text('pc master race'), subtitle: Text('Proc:AMD, GPU:Nvidia'),leading: Icon(Icons.ac_unit), trailing: Text('\$600.0'),),
          ListTile(title: Text('pc master race'), subtitle: Text('Proc:AMD, GPU:Nvidia'),leading: Icon(Icons.ac_unit), trailing: Text('\$600.0'),),
          ListTile(title: Text('pc master race'), subtitle: Text('Proc:AMD, GPU:Nvidia'),leading: Icon(Icons.ac_unit), trailing: Text('\$600.0'),),
          ListTile(title: Text('pc master race'), subtitle: Text('Proc:AMD, GPU:Nvidia'),leading: Icon(Icons.ac_unit), trailing: Text('\$600.0'),),
          ListTile(title: Text('pc master race'), subtitle: Text('Proc:AMD, GPU:Nvidia'),leading: Icon(Icons.ac_unit), trailing: Text('\$600.0'),),
          ListTile(title: Text('pc master race'), subtitle: Text('Proc:AMD, GPU:Nvidia'),leading: Icon(Icons.ac_unit), trailing: Text('\$600.0'),),
          ListTile(title: Text('pc master race'), subtitle: Text('Proc:AMD, GPU:Nvidia'),leading: Icon(Icons.ac_unit), trailing: Text('\$600.0'),),
        ],);

    // return Container(
    //   decoration: BoxDecoration(
    //     shape: BoxShape.circle
    //   ),
    //   child: Center(
    //     child: Text('bottom sheet'),
    //   ),
    // );
  });
}

Widget _logingPage(BuildContext context){
  return Column(
    children: [
      SizedBox(width: double.infinity,),

      Container(
        width: 300.0, 
        height: 300.0, 
        decoration: BoxDecoration(
          shape: BoxShape.circle, 
          color: Colors.red, 
          image: new DecorationImage(
            image: NetworkImage('https://image.freepik.com/vector-gratis/perfil-empresario-dibujos-animados_18591-58479.jpg'),
            fit: BoxFit.fill
              // fit: BoxFit.fill,  
          )
        )
      ),
      Divider(height: 200.0,),
      RaisedButton(child: Text('modal'), onPressed: (){
        _bottomSheet(context);

      },)
    ],

  );
}


}