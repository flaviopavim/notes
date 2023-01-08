import 'package:flutter/material.dart';

import '../inc/nav.dart';
import '../widget/body.dart';

class Main extends StatefulWidget {
  const Main({super.key});
  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        bar(),
        nav(context),
        //body(context,scroll(cards(context))),
      ],),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}