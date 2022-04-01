
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
class GestorColor{
  // Color ligth theme
  static final primaryColor = Color(0xFF140e14);
  static final secondaryColor = Color(0xFF0e3a58);
  static final threedColor = Color(0xFF097aad);
  static final fourthColor = Color(0xFF07c4ff);
  static final fifthColor = Color(0xFF0ffff8);
  static final staticColor = Color(0xFFFFFFFF);

  //color dark theme
  static final primaryColorDark = Color(0xFF232425);
  static final secondaryColorDark = Color(0xFF4d4e68);
  static final threedColorDark = Color(0xFF0b8295);
  static final fourthColorDark = Color(0xFF619e95);
  static final fifthColorDark = Color(0xFF9fb8a2);
  
}

final ColorGradient = [
               GestorColor.fourthColor,
               GestorColor.fifthColor,
            ];

// //border define ligth theme
// final _borderLigth = OutlineInputBorder(
//       borderRadius: BorderRadius.circular(10),
//       borderSide: BorderSide(
//         color: GestorColor.fourthColor,
//         width: 1,
//         style: BorderStyle.solid,
//     )
//   );
// //border define dark theme
//   final _borderDark = OutlineInputBorder(
//       borderRadius: BorderRadius.circular(10),
//       borderSide: BorderSide(
//         color: GestorColor.fifthColorDark,
//         width: 1,
//         style: BorderStyle.solid,
//     )
//   );



// // Theme ligth
// /**
//  * Adaptive color dark when the person cliked of button
//  * @Default
//  */
// final ligthTheme = ThemeData(
//   appBarTheme: AppBarTheme(
//     color: GestorColor.fifthColor, 
//   ),
//   canvasColor: Colors.grey[100],
//   scaffoldBackgroundColor: GestorColor.staticColor,
//   textTheme: GoogleFonts.poppinsTextTheme().apply(
//     bodyColor: GestorColor.primaryColor,
//     displayColor: GestorColor.fourthColor
//   ),

//   inputDecorationTheme: InputDecorationTheme(
//     border: _borderLigth,
//     enabledBorder: _borderLigth,
//     focusedBorder: _borderLigth,
//     contentPadding: EdgeInsets.zero,
//     labelStyle: TextStyle(color: GestorColor.primaryColor),
//     hintStyle: GoogleFonts.poppins(
//       color: GestorColor.secondaryColor,
//       fontSize: 12,
//     )
//     ),

//     iconTheme: IconThemeData(
//       color: GestorColor.primaryColor
//     )
// );



// // Theme dark
// /**
//  * Adaptive color ligth when the person cliked of button
//  */

// final dartTheme = ThemeData(

//   appBarTheme: AppBarTheme(
//     color: GestorColor.fifthColorDark, 
//   ),
//   canvasColor: GestorColor.threedColorDark,
//   scaffoldBackgroundColor: GestorColor.primaryColor,
//   textTheme: GoogleFonts.poppinsTextTheme().apply(
//     bodyColor: GestorColor.fifthColorDark,
//     displayColor: GestorColor.primaryColorDark
//   ),

//   inputDecorationTheme: InputDecorationTheme(
//     border: _borderDark,
//     enabledBorder: _borderDark,
//     focusedBorder: _borderDark,
    
//     labelStyle: TextStyle(color: GestorColor.fifthColorDark),
//     fillColor: GestorColor.threedColorDark,
//     filled: true,
//     hintStyle: GoogleFonts.poppins(
//       color: GestorColor.staticColor,
//       fontSize: 12,
//     )
//     ),

//     iconTheme: IconThemeData(
//       color: GestorColor.secondaryColorDark
//     )
// );