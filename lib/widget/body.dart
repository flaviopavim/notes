import 'package:flutter/material.dart';

scroll(w) {
  return ListView(
      padding: const EdgeInsets.all(0),
      children: <Widget>[w]
  );
}

body(context,w) {
  return Container(
      width: double.infinity,
      height:MediaQuery.of(context).size.height-40-24-MediaQuery.of(context).viewInsets.bottom,
      color: const Color(0xFFDDDDDD),
      child:Padding(
          padding: const EdgeInsets.all(4.0),
          child:w));
}

bar() {
  return Container(width: double.infinity,height:24,color: Colors.black87);
}