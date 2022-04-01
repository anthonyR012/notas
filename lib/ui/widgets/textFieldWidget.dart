



import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



Widget getMainLabel(context,String text,TextAlign aling){
  return Text(text,
                    textAlign: aling,
                    style: Theme.of(context).textTheme.caption?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).inputDecorationTheme.labelStyle!.color),
                      );
}

Widget getMainTextField(context,String text, IconData icon){
  return  TextField(
                    autofocus: false,
                    decoration: InputDecoration(
                    prefixIcon: Icon(icon,
                    color: Theme.of(context).iconTheme.color),
                    hintText: text
                    ),
                );
  
}