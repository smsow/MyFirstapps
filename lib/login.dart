import 'package:flutter/material.dart';
import 'register1.dart'; // Import RegisterPage.dart
import 'package:google_fonts/google_fonts.dart';
import 'mainpage.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // ignore: avoid_unnecessary_containers
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _inputField(context),
              _forgotPassword(context),
              _signup(context),
            ],
          ),
        ),
      ),
    );
  }

_inputField(context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Align(
        alignment: FractionalOffset(0.06, 1),
        child: Text(
          "Log in",
          style: GoogleFonts.comfortaa( 
          textStyle: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
          textAlign: TextAlign.center,
        ),
      ),
      SizedBox(height: 20),
      SizedBox(
        width: 343.0,
        child: TextField(
          decoration: InputDecoration(
            hintText: "Enter your Username",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: BorderSide(
                color: Colors.black,
                width: 10.0,
              ),
            ),
            fillColor: Color(0xFF0D430B),
            filled: false,
          ),
        ),
      ),
      SizedBox(height: 10),
      SizedBox(
        width: 343.0,
        height: 52.0,
        child: TextField(
          decoration: InputDecoration(
            hintText: "Enter your Password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: BorderSide(
                color: Colors.black,
                width: 25,
              ),
            ),
            filled: false,
          ),
          obscureText: true,
        ),
      ),
      SizedBox(height: 10), 
        SizedBox(
          width: 343.0,
          height: 52.0,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainPage()),
              );
            },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            padding: EdgeInsets.symmetric(vertical: 16),
            backgroundColor: Color(0xFF0D430B),
          ),
          child: Text(
            "LOG IN",
            style: GoogleFonts.roboto( 
            textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white)),
          ),
        ),
      ),
    ],
  );
}


  _forgotPassword(context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Color(0xFF0D430B)), 
      ),
      child: Text(
        "Forgot password?",
        style: TextStyle(color: Color(0xFF0D430B)), 
      ),
    );
  }

  _signup(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account? ", style: TextStyle(color: Color(0xFF0D430B))),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegisterPage()), 
            );
          },
          child: Text("Sign Up", style: TextStyle(color: Color(0xFF0D430B))),
        ),
      ],
    );
  }
}
