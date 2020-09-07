import 'package:flutter/material.dart';
// import 'package:solotodo/pages/cotizacion_page.dart';


class PerfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(235, 235, 235, 1),
      body:  SafeArea(
          child:
          SingleChildScrollView(
            child: 
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _logingPage(context),
                ]
            )
          ,) 
            
        ),
      
    //   floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    //   floatingActionButton: FloatingActionButton(
    //     child: Text('Ir detalle'),
    //     onPressed: () => Navigator.pushNamed(context, 'cotizacion_page'),
    // )
    );
  }


void _bottomSheet(BuildContext context){
  showModalBottomSheet(context: context, backgroundColor: Colors.transparent, builder: (builder){


    return 
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: 
            Container(
              // height: 1500.0,
              // height: 500.0,
              color: Colors.white,
              child: Column(
                children: [ 
                  Icon(Icons.keyboard_arrow_down, size: 50.0,),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.vertical,
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
                      ],
                    ),
                  ),
                ],
              )
            ),
        );
  });
}

Widget _logingPage(BuildContext context){
  return  Container(
          // color: Colors.red,
          margin: EdgeInsets.all(20.0),
          decoration: new BoxDecoration(
            boxShadow: [
              BoxShadow(offset: Offset(5, 5), blurRadius: 10.0, color:Color.fromRGBO(180, 180, 180, 1), spreadRadius:2.0)
            ]


          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Container(
              color: Colors.white,
              child:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(width: double.infinity,height: 10.0,),
              _imagenUser(context),
              SizedBox(height: 10.0,),
              Text('Nombre de usuario', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),), 
              _formulario(context),
              // Expanded(child: SizedBox(height: 10.0,),)
            ],
        ),
      )),
          )
      );
  
}


Widget _imagenUser(BuildContext context){
  return Stack(
      children:[ 
        Container(
            width: 120.0, 
            height: 120.0, 
            decoration: BoxDecoration(
              shape: BoxShape.circle, 
              color: Colors.red, 
              image: new DecorationImage(
                image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS316qTwul1gW8pZ45UJ2WbhL5MuujJbfIuKg&usqp=CAU%22'),
                fit: BoxFit.cover
                  // fit: BoxFit.fill,  
              )
            )
          ),
          Positioned(
            top: 95,
            left: 95,
            child: Container(
            width: 30.0, 
            height: 30.0, 
            child: Icon(Icons.camera_alt),
           
          )
         ),
      ]
  );
}

Widget _formulario(BuildContext context){
  return Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:30.0),
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person_pin),
                    hintText:  'Ej:Juan Cristobal',
                    labelText: 'Nombre'
                  ),
                ),
                SizedBox(height: 10.0,),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person_pin),
                    hintText:  'Ej:Perez Campos',
                    labelText: 'Apellidos'
                  ),
                ),
                SizedBox(height: 10.0,),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Correo',
                    hintText:  'correo@correo.com',
                    prefixIcon: Icon(Icons.alternate_email)
                  ),
                ),
                SizedBox(height: 10.0,),
                TextFormField(
                  keyboardType: TextInputType.name,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Constraseña',
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
                SizedBox(height: 10.0,),
                TextFormField(
                  
                  keyboardType: TextInputType.name,
                  obscureText: true,
                  decoration: InputDecoration(
                    // 184, 17, 17
                    hoverColor: Color.fromRGBO(184, 17, 17, 1),
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Repita su contraseña'
                  ),
                ),
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Region'),
                  DropdownButton(
                    onChanged: (index) => print('hola'),
                    items: [
                      DropdownMenuItem(child: Text('Bio Bio'),),
                      DropdownMenuItem(child: Text('aki'),),
                    ],)
                  ],
                ),
                SizedBox(height: 5.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Ciudad'),
                  DropdownButton(
                    onChanged: (index) => print('hola'),
                    items: [
                      DropdownMenuItem(child: Text('Los Angeles'),),
                      DropdownMenuItem(child: Text('aki'),),
                    ],)
                  ],
                ),
                SizedBox(height: 10.0,),
              ],
            ),
          ),
        );
}


}