import 'package:flutter/material.dart';

import '../../inc/nav.dart';
import '../../widget/body.dart';
import '../../widget/form.dart';
import '../../widget/layout.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}

final controller_email = TextEditingController();
final controller_pass = TextEditingController();

class _LoginState extends State<Login> {
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
              pass('Senha',controller_pass),
              br(15.0),
              Row(children: [
                Expanded(flex: 2, child: Container()),
                Expanded(flex: 1, child: GestureDetector(
                    onTap: () {
                      navigate(context,'');
                    },
                    child: button('Entrar',Colors.black87))),
              ]),
              br(30.0),
              GestureDetector(
                  onTap: () {
                    navigate(context,'signup');
                  },
                  child: link('Cadastre-se grátis')),
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