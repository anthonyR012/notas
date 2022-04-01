


import 'package:flutter/material.dart';
import 'package:notas/ui/widgets/theme.dart';

Widget getBigButton( {required BuildContext context,required String text,  size,required double padding }){
  return Container(
                  width:size,
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: ColorGradient)
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(padding),
                    child: Text(text,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                    ),
                  ),
                );
}