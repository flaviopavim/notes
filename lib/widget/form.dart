import 'package:flutter/material.dart';

import 'layout.dart';

formGroup(t,controller) {
  return Column(
    //mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(t),
      br(5.0),
      Container(
        width: double.infinity,
        height: 55,
        color: Colors.black12,
        //child: Text(t)
        child: TextField(
          controller: controller,
          //obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            //labelText: 'Password',
          ),
        )
      ),
    ],
  );
}


input(t,controller) {
  return formGroup(t,controller);
}

pass(t,controller) {
  return formGroup(t,controller);
}

textarea(t,controller) {
  return Column(
    //mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(t),
      br(5.0),
      Container(
        width: double.infinity,
        height: 120,
        color: Colors.black12,
        //child: Text(t)
        child: TextField(
          controller: controller,
          //obscureText: true,
          maxLines: 8,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            //labelText: 'Password',
          ),
        ),
      ),
    ],
  );
}


select(t,controller) {
  return formGroup(t,controller);
}



boolSwitch(t,controller) {
  //aquele botão de liga e desliga
  return formGroup(t,controller);
}

button(t,c) {
  return Container(
      width: double.infinity,
      height: 35,
      color: c,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Center(child: Text(t,style:TextStyle(color:Colors.white))),
      )
  );
}