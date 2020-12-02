import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:my_pet_app/src/bloc/petHandler.dart';
import 'package:my_pet_app/src/models/Pet.dart';
import 'package:my_pet_app/src/models/Client.dart';
import '../models/Employee.dart';

class listaEmpleados extends StatefulWidget {
  listaEmpleados({Key key,this.title}): super(key: key);
  final String title;
  @override
  PageListEmpleados createState() => new PageListEmpleados();
}

class PageListEmpleados extends State<listaEmpleados> {
  List data = new List();
  BusinessLogicComponent handler;

  void initState()  {
    data=[new Employee('Carlos', 'Betancour', 'carlillo@correo.com', 'Activo', 1, '3265896452', 'CC'),
          new Employee('Carolina', 'Gonzales', 'gonza@correo.com', 'Activo', 1, '1113251689', 'CC')];// await handler.recibir();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(title: Text("Empleados"),centerTitle: true,),
        body: Container(

          child: new ListView.builder(
              itemCount: data == null ? 0 : data.length,
              itemBuilder: (BuildContext context, i){
                if(data == null){
                  return new CircularProgressIndicator();
                }
                else
                  return new InkWell(
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Stack(
                              children: <Widget>[
                                Icon(Icons.face)
                              ]
                          ),
                          //   Text(data[i]['animal'], style: TextStyle(fontSize: 20,),textAlign: TextAlign.justify,),
                          Align(
                            alignment: Alignment.centerRight,
                            child:Text(data[i].apellidos),
                          ),
                          Text("Nombre: "+data[i].nombres,
                            style: TextStyle(fontSize: 20,),textAlign: TextAlign.justify,),
                          //   Text(data[i]['edad'].toString(), style: TextStyle(fontSize: 20,),textAlign: TextAlign.justify,),
                          Text("estado: "+data[i].estado, style: TextStyle(fontSize: 20,),textAlign: TextAlign.justify,),
                          //   Text(data[i]['peso'], style: TextStyle(fontSize: 20,),textAlign: TextAlign.justify,),
                          //   Text(data[i]['color'], style: TextStyle(fontSize: 20,),textAlign: TextAlign.justify,),
                          //  Text(data[i]['altura'], style: TextStyle(fontSize: 20,),textAlign: TextAlign.justify,),
                        ],
                      ),
                    ),
                    onTap: (){
                      print("Proximamente el detalle! :V");
                      /*Navigator.push(context, new MaterialPageRoute(
                          builder: (BuildContext context)=> new registroMascotas())
                      );*/
                    },
                  );
              }
          ),
        )
    );
  }
}