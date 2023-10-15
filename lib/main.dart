import 'package:flutter/material.dart';
import '../view/menu.dart';
import '../view/note/edit.dart';
import '../view/note/list.dart';
import '../view/note/view.dart';
import '../view/note/delete.dart';

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