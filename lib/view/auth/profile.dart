import 'package:flutter/material.dart';

import '../../inc/nav.dart';
import '../../widget/body.dart';
import '../../widget/form.dart';
import '../../widget/layout.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});
  @override
  State<Profile> createState() => _ProfileState();
}

final controller_email = TextEditingController();
final controller_actual_pass = TextEditingController();
final controller_new_pass = TextEditingController();
final controller_new_pass_2 = TextEditingController();

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        bar(),
        nav(context),
        body(context, scroll(Padding(
          padding: const EdgeInsets.only(
              top: 30.0, bottom: 30.0, left: 30.0, right: 30.0),
          child: Center(
            child: Column(children: [
              Text('Imagem de perfil aqui caso tiver'),
              br(15.0),
              input('Email',controller_email),
              br(15.0),
              pass('Senha atual',controller_actual_pass),
              br(15.0),
              pass('Senha',controller_new_pass),
              br(15.0),
              pass('Redigite a senha',controller_new_pass_2),
              br(15.0),
              Row(children: [
                Expanded(flex: 2, child: Container()),
                Expanded(flex: 1, child: GestureDetector(
                    onTap: () {
                      navigate(context,'');
                    },
                    child: button('Cadastrar',Colors.black87))),
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