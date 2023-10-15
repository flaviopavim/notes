import 'package:flutter/material.dart';

import '../fn/var.dart';
import 'form.dart';
import 'layout.dart';

card(context,arr) {
  return Column(children: [
    Container(
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            Container(
                width:double.infinity,
                height: 40,
                color: const Color(0xFFCCCCCC),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(arr['title']),
                )
            ),
            Container(
                width:double.infinity,
                //height: 200-40-40,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(child: Text(arr['description'],style:TextStyle(fontSize: 18))),
                )),
            Container(
                width:double.infinity,
                height: 40,
                //color: Colors.black12,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(children: [
                    Expanded(flex:40,child: GestureDetector(onTap:(){
                      edit_id=arr['id'];
                      navigate(context,'edit_note');
                    },child:button('Editar',Colors.amber))),
                    Expanded(flex:1,child:Container()),
                    Expanded(flex:40,child: GestureDetector(onTap:(){
                      edit_id=arr['id'];
                      navigate(context,'delete_note');
                    },child:button('Excluir',Colors.red))),
                  ],),
                ))
          ],
        ),
      ),
    ),
    Container(
      width: double.infinity,
      height: 5
    )
  ],);
}

cards(context,list) {
  var array=[];
  for(var i=0;i<list.length;i++) {
    array.add(list[i]);
  }
  return Container(
    width: double.infinity,
    child: Column(children: array.map((arr)=>Container(
      child: card(context,arr),
    )).toList()),
  );
}