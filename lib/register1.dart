import 'package:flutter/material.dart';
import 'login.dart';
import 'package:google_fonts/google_fonts.dart';


class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _inputField(context),
              _hasaccount(context),
            ],
          ),
        ),
      ),
    );
  }


_inputField(context) {
  return Padding(
    padding: EdgeInsets.only(bottom:0 ),
    child: Column(
     children: [
      Align(
        alignment: FractionalOffset(0.05, 0.6),
        child: Text(
          "Register",
          style: GoogleFonts.comfortaa( 
            textStyle: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
        ),
      ),
      SizedBox(height: 20),
      Align(
         alignment: FractionalOffset(0.05, 0.6),
         child: Text(
          "Email",
          style: GoogleFonts.comfortaa( 
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
         ),
      ),
        SizedBox(
          width: 343.0,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Enter your email address",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0),
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 1, // Border width
                ),
              ),
              fillColor: Color(0xFF0D430B),
              filled: false,
            ),
          ),
        ),
        SizedBox(height: 14,),
         Align(
         alignment: FractionalOffset(0.05, 0.6),
         child: Text(
          "Password",
          style: GoogleFonts.comfortaa( 
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
      
          textAlign: TextAlign.left,
         ),
         ),
        SizedBox(
          width: 343.0,
          height: 52.0,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Enter your desired password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0),
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 25, // Border width
                ),
              ),
              filled: false,
            ),
            obscureText: true,
          ),
        ),
        SizedBox(height: 14,),
         Align(
         alignment: FractionalOffset(0.05, 0.6),
         child: Text(
          "Confirm Password",
         style: GoogleFonts.comfortaa( 
          textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
         ),
         ),
        SizedBox(
          width: 343.0,
          height: 52.0,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Confirm your password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0),
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 25, // Border width
                ),
              ),
              filled: false,
            ),
            obscureText: true,
          ),
        ),
         SizedBox(height: 14,),
         Align(
         alignment: FractionalOffset(0.05, 0.6),
         child: Text(
          "First Name",
          style: GoogleFonts.comfortaa( 
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
         ),
         ),
        SizedBox(
          width: 343.0,
          height: 52.0,
          child: TextField(
            decoration: InputDecoration(
              hintText: "John",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0),
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 25, // Border width
                ),
              ),
              filled: false,
            ),
            obscureText: false,
          ),
        ),
         SizedBox(height: 14,),
         Align(
         alignment: FractionalOffset(0.05, 0.6),
         child: Text(
          "Last Name",
          style: GoogleFonts.comfortaa( 
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
         ),
         ),
        SizedBox(
          width: 343.0,
          height: 52.0,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Doe",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0),
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 25, // Border width
                ),
              ),
              filled: false,
            ),
            obscureText: false,
          ),
        ),
        SizedBox(height: 14,),
         Align(
         alignment: FractionalOffset(0.05, 0.6),
         child: Text(
          "Address",
          style: GoogleFonts.comfortaa( 
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
         ),
         ),
        SizedBox(
          width: 343.0,
          height: 52.0,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Mermoz...",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0),
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 25, // Border width
                ),
              ),
              filled: false,
            ),
            obscureText: false,
          ),
        ),
        SizedBox(height: 16),
        SizedBox(
          width: 343.0,
          height: 52.0,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              padding: EdgeInsets.symmetric(vertical: 16),
              backgroundColor: Color(0xFF0D430B),
            ),
            child: Text(
              "Register",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ],
    ),
  );
}




_hasaccount(context) {
  return Column(
    children: [
      Text(
        "You already have an account? ",
        style: TextStyle(color: Color(0xFF0D430B)),
      ),
      TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()), 
          );
        },
        child: Text(
          "Click Here",
          style: TextStyle(color: Color(0xFF0D430B)),
        ),
      ),
    ],
  );
}

}