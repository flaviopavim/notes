import 'package:flutter/material.dart';

import '../../inc/nav.dart';
import '../../widget/body.dart';

class ViewNote extends StatefulWidget {
  const ViewNote({super.key});
  @override
  State<ViewNote> createState() => _ViewNoteState();
}

class _ViewNoteState extends State<ViewNote> {
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
              Text('View note')
            ]),
          ),
        ))),
      ],), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}