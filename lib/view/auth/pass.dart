import 'package:flutter/material.dart';

import '../../inc/nav.dart';
import '../../widget/body.dart';
import '../../widget/form.dart';
import '../../widget/layout.dart';

class Pass extends StatefulWidget {
  const Pass({super.key});
  @override
  State<Pass> createState() => _PassState();
}

final controller_code = TextEditingController();
final controller_new_pass = TextEditingController();
final controller_new_pass_2 = TextEditingController();

class _PassState extends State<Pass> {
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
              input('Código',controller_code),
              br(15.0),
              pass('Nova senha',controller_new_pass),
              br(15.0),
              pass('Redigite a nova senha',controller_new_pass_2),
              br(15.0),
              Row(children: [
                Expanded(flex: 2, child: Container()),
                Expanded(flex: 1, child: GestureDetector(
                    onTap: () {
                      navigate(context,'');
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
                    navigate(context,'pass');
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