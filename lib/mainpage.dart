
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // _navbar(context),
              _navbar(context)
            ],
          ),
        ),
      ),
    );
  }
}

// _navbar(context) {
//   return Row(
//     children: [
//         Align(
//         alignment: FractionalOffset(0.06, 1),
//         child: Text(
//           " Menu",
//           style: GoogleFonts.comfortaa( 
//           textStyle: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
//           textAlign: TextAlign.center,
//         ),
//   ),
//   ],  

//   );
// }

_navbar(context) {
  return Column(
    children: [
      Row(
        children: [
          Align(
            alignment: FractionalOffset(0.09, 1),
            child: Text(
              " Menu",
              style: GoogleFonts.comfortaa(
                textStyle: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      SizedBox(
        width: 343.0,
        height: 52,
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search any item",
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(0),
            ),
            fillColor: Color(0xFF0D430B),
            filled: false,
          ),
        ),
      ),
    ],
  );
}

