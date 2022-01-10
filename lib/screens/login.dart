import 'package:flutter/material.dart';

import '../widgets/button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF6383fc),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Icon(Icons.menu),
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Container(
        color: Color(0xFF6383fc),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  size: 150,
                  color: Color(0xFFffa01b),
                ),
              ],
            ),
            Text(
              "FindGo",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            ),
            Text(
              "Find every place around you",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 5,
            ),
            MyButton(
              btnText: 'Sign Up',
               bgColor:  Color(0xFFffa01b), txtColor: Colors.white,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 45,
            ),
            MyButton(
              btnText: 'Login', bgColor: Colors.white, txtColor: Color(0xFFffa01b),
            ),
          ],
        ),
      ),
    );
  }
}