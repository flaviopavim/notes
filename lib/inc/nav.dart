import 'package:flutter/material.dart';

import '../widget/layout.dart';

nav(context) {
  return Container(
    width: double.infinity,
    height:40,
    color: Colors.black87,
    child: Row(children: [
      Expanded(flex:1,child:GestureDetector(
            onTap: () {
              navigate(context,'menu');
            },
            child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(child: Text('Anotações',style:TextStyle(color:Colors.white)),),
      ))),
      GestureDetector(
        onTap: () {
          navigate(context,'menu');
        },
        child: Container(width:40,height:40,color: Colors.black87,
          child: Icon(Icons.menu,color:Colors.white),),
      )
    ]),
  );
}