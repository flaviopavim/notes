import 'package:flutter/material.dart';
import 'package:notes/view/menu.dart';
import 'package:notes/view/note/edit.dart';
import 'package:notes/view/note/list.dart';
import 'package:notes/view/note/view.dart';
import 'package:notes/view/note/delete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/menu',
      routes: {
        '/menu': (context) => const Menu(),
        '/edit_note': (context) => const EditNote(),
        '/list_notes': (context) => const ListNotes(),
        '/view_note': (context) => const ViewNote(),
        '/delete_note': (context) => const DeleteNote(),
      },
    );
  }
}