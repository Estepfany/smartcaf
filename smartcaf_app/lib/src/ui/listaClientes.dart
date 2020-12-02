import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:my_pet_app/src/bloc/petHandler.dart';
import 'package:my_pet_app/src/models/Pet.dart';
import 'package:my_pet_app/src/models/Client.dart';

class listaClientes extends StatefulWidget {
  listaClientes({Key key,this.title}): super(key: key);
  final String title;
  @override
  PageListClientes createState() => new PageListClientes();
}

class PageListClientes extends State<listaClientes> {
  List data = new List();
  BusinessLogicComponent handler;

  void initState()  {
    data=[new Client('Veronio', 'Cancimance', 'VeroCaci@correo.com', 'Activo', 1, '1234', '0326689524', 'CC') ];// await handler.recibir();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(title: Text("Clientes"),centerTitle: true,),
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
                                Center(
                                    child: Image.network("https://png.pngtree.com/thumb_back/fw800/back_our/20190625/ourmid/pngtree-gym-muscle-man-cartoon-flat-background-image_255472.jpg",
                                        width: 70,height: 70)
                                ),
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