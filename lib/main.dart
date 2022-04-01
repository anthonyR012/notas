

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notas/ui/routes.dart';
import 'package:notas/ui/widgets/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {


final _borderLigth = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: GestorColor.fourthColor,
        width: 1,
        style: BorderStyle.solid,
    )
  );

  final _borderDark = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: GestorColor.fifthColorDark,
        width: 1,
        style: BorderStyle.solid,
    )
  );



// Theme ligth
/**
 * Adaptive color dark when the person cliked of button
 * @Default
 */
final ligthTheme = ThemeData(
  canvasColor: Colors.grey[100],
  appBarTheme: AppBarTheme(
    color: GestorColor.threedColor, 
    
  ),
  scaffoldBackgroundColor: GestorColor.staticColor,
  textTheme: GoogleFonts.poppinsTextTheme().apply(
    bodyColor: GestorColor.primaryColor,
    displayColor: GestorColor.fourthColor
  ),
  bottomAppBarColor: Colors.amber,
  cardColor: Colors.white,
  inputDecorationTheme: InputDecorationTheme(
    border: _borderLigth,
    enabledBorder: _borderLigth,
    focusedBorder: _borderLigth,
    contentPadding: EdgeInsets.zero,
    labelStyle: TextStyle(color: GestorColor.primaryColor),
    filled: true,
    hintStyle: GoogleFonts.poppins(
      color: GestorColor.secondaryColor,
      fontSize: 12,
    )
    ),

    iconTheme: IconThemeData(
      color: GestorColor.primaryColor
    )
);



// Theme dark
/**
 * Adaptive color ligth when the person cliked of button
 */

final dartTheme = ThemeData(
    appBarTheme: AppBarTheme(
    color: GestorColor.threedColorDark, 
  
  ),
  bottomAppBarColor: Colors.transparent,
  canvasColor: GestorColor.threedColorDark,
    cardColor: Colors.grey[800],
   
  scaffoldBackgroundColor: GestorColor.primaryColor,
  textTheme: GoogleFonts.poppinsTextTheme().apply(
    bodyColor: GestorColor.fifthColorDark,
    displayColor: GestorColor.primaryColorDark
  ),

  inputDecorationTheme: InputDecorationTheme(
    border: _borderDark,
    enabledBorder: _borderDark,
    focusedBorder: _borderDark,
    contentPadding: EdgeInsets.zero,
    labelStyle: TextStyle(color: GestorColor.fifthColorDark),
    fillColor: GestorColor.threedColorDark,
    filled: true,
    hintStyle: GoogleFonts.poppins(
      color: GestorColor.staticColor,
      fontSize: 12,
    )
    ),

    iconTheme: IconThemeData(
      color: GestorColor.secondaryColorDark
    )
);

    return MaterialApp(
      title: 'Emcali Perdidas',
      theme:ligthTheme,
      initialRoute: '/',
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}