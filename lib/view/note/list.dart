import 'package:flutter/material.dart';
import '../../fn/database.dart';
import 'package:sqflite/sqflite.dart';

import '../../inc/nav.dart';
import '../../widget/body.dart';
import '../../widget/card.dart';

class ListNotes extends StatefulWidget {
  const ListNotes({super.key});
  @override
  State<ListNotes> createState() => _ListNotesState();
}

var list=[];

class _ListNotesState extends State<ListNotes> {

  data() async {
    Database database=await connection();
    list = await database.rawQuery('SELECT * FROM note ORDER BY id DESC');
    await database.close();

    setState((){});
  }

  @override
  void initState() {
    // TODO: implement initState
    data();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        bar(),
        nav(context),
        body(context, scroll(cards(context,list))),
      ],), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}