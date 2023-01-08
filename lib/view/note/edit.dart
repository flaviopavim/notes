import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

import '../../fn/database.dart';
import '../../fn/var.dart';
import '../../inc/nav.dart';
import '../../widget/body.dart';
import '../../widget/form.dart';
import '../../widget/layout.dart';

class EditNote extends StatefulWidget {
  const EditNote({super.key});
  @override
  State<EditNote> createState() => _EditNoteState();
}

final controller_title = TextEditingController();
final controller_description = TextEditingController();

var data;

class _EditNoteState extends State<EditNote> {

  getData() async {
    controller_title.text="";
    controller_description.text="";
    if (edit_id>0) {
      Database database = await connection();
      data = await database.rawQuery('SELECT * FROM note WHERE id=$edit_id');
      controller_title.text = data[0]["title"];
      controller_description.text = data[0]["description"];
      await database.close();
    }
    setState((){});
  }

  @override
  void initState() {
    // TODO: implement initState
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(children: [
        bar(),
        nav(context),
        body(context, scroll(Padding(
          padding: const EdgeInsets.only(
              top: 50.0, bottom: 50.0, left: 30.0, right: 30.0),
          child: Column(children: [
            input('Título',controller_title),
            br(15.0),
            textarea('Descrição',controller_description),
            br(15.0),
            Row(children: [
              Expanded(flex: 2, child: Container()),
              Expanded(flex: 1, child: GestureDetector(
                  onTap: () async {

                    if (edit_id==0) {
                      await insert([
                        controller_title.text,
                        controller_description.text
                      ]);
                    } else {
                      await update([
                        controller_title.text,
                        controller_description.text
                      ],edit_id);
                    }
                    navigate(context,'list_notes');
                  },
                  child: button(edit_id>0?'Atualizar':'Cadastrar',Colors.black87))),
            ]),
          ],),
        ))),
      ],), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}