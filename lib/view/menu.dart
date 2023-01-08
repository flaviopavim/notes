import 'package:flutter/material.dart';

import '../fn/var.dart';
import '../inc/nav.dart';
import '../widget/body.dart';
import '../widget/layout.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        bar(),
        nav(context),
        body(context,scroll(Column(children: [
          GestureDetector(onTap:(){
            navigate(context,'list_notes');
          },child:linkMenu('Anotações',Icons.edit)),
          GestureDetector(onTap:(){
            edit_id=0;
            navigate(context,'edit_note');
          },child:linkMenu('Nova anotação',Icons.add_circle)),
        ],))),
        //Container(width: double.infinity,height:40,color: Colors.black12),
      ],),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}