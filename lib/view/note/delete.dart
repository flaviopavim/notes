import 'package:flutter/material.dart';
import '../../fn/var.dart';
import 'package:sqflite/sqflite.dart';

import '../../fn/database.dart';
import '../../inc/nav.dart';
import '../../widget/body.dart';
import '../../widget/form.dart';
import '../../widget/layout.dart';

class DeleteNote extends StatefulWidget {
  const DeleteNote({super.key});
  @override
  State<DeleteNote> createState() => _DeleteNoteState();
}

class _DeleteNoteState extends State<DeleteNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        bar(),
        nav(context),
        body(context, scroll(Padding(
          padding: const EdgeInsets.only(
              top: 80.0, bottom: 80.0, left: 30.0, right: 30.0),
          child: Center(
            child: Column(children: [
              Text('Delete note?'),
              br(30.0),
              Row(children: [
                Expanded(flex:40,child: GestureDetector(onTap:(){
                  navigate(context,'list_notes');
                },child:button('Voltar',Colors.black87))),
                Expanded(flex:1,child:Container()),
                Expanded(flex:40,child: GestureDetector(onTap:() async {
                  Database database=await connection();
                  await database.rawDelete('DELETE FROM note WHERE id = $edit_id');
                  await database.close();
                  edit_id=0;
                  navigate(context,'list_notes');
                },child:button('Excluir',Colors.red))),
              ])
            ])
          ),
        ))),
        //Container(width: double.infinity,height:40,color: Colors.black12),
      ],), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}