import 'package:flutter/material.dart';

list() {
  return Container(
    width: double.infinity,
    //height: 40,
    color: Colors.yellow,
    child: Column(children: [
      'hello',
      'world',
      'hello',
      'world',
      'hello',
      'world',
      'hello',
      'world',
      'hello',
      'world',
      'hello',
      'world',
      'hello',
      'world',
      'hello',
      'world',
      'hello',
      'world',
      'hello',
      'world'
    ].map((title)=>Container(
      child: Column(children: [
        Container(
            width: double.infinity,
            height: 40,
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title),
            ),
        ),
        Container(
            width: double.infinity,
            height: 1,
            color: Colors.black
        )
      ],),
    )).toList(),),
  );
}