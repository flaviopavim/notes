import 'package:flutter/material.dart';

import '../../inc/nav.dart';
import '../../widget/body.dart';
import '../../widget/form.dart';
import '../../widget/layout.dart';

class Recovery extends StatefulWidget {
  const Recovery({super.key});
  @override
  State<Recovery> createState() => _RecoveryState();
}

final controller_email = TextEditingController();

class _RecoveryState extends State<Recovery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        bar(),
        nav(context),
        body(context, scroll(Padding(
          padding: const EdgeInsets.only(
              top: 100.0, bottom: 100.0, left: 30.0, right: 30.0),
          child: Center(
            child: Column(children: [
              input('Email',controller_email),
              br(15.0),
              Row(children: [
                Expanded(flex: 4, child: Container()),
                Expanded(flex: 3, child: GestureDetector(
                    onTap: () {
                      navigate(context,'pass');
                    },
                    child: button('Recuperar senha',Colors.black87))),
              ]),
              br(30.0),
              GestureDetector(
                  onTap: () {
                    navigate(context,'login');
                  },
                  child: link('Já é cadastrado? Faça seu login')),
              GestureDetector(
                  onTap: () {
                    navigate(context,'recovery');
                  },
                  child: link('Esqueci minha senha')),
            ],),
          ),
        ))),
        //Container(width: double.infinity,height:40,color: Colors.black12),
      ],), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}