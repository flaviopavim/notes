import 'package:flutter/material.dart';

navigate(context,route) {
  Navigator.pop(context);
  Navigator.pushNamed(context, '/$route');
}

br(n) {
  return Container(height: n);
}

link(t) {
  //aquele botão de liga e desliga
  return Container(
      width: double.infinity,
      height: 20,
      //color: Colors.black12,
      child: Center(child: Text(t))
  );
}

linkMenu(t,i) {
  return Column(
    children: [
      Container(
          width: double.infinity,
          height: 40,
          color: Colors.black12,
          child: Center(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(i,size:16),
              Container(width:5),
              Text(t),
            ],
          ))
      ),
      Container(height:1),
    ],
  );
}