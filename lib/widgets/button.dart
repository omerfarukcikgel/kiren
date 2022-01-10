import 'package:flutter/material.dart';

import '../screens/home.dart';



class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.btnText, required this.bgColor, required this.txtColor,
  }) : super(key: key);

  final String btnText;
  final Color bgColor;
  final Color txtColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        );
      },
      child: Container(
        height: MediaQuery.of(context).size.height / 20,
        width: MediaQuery.of(context).size.width / 2.8,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
            child: Text(
          btnText,
          style: TextStyle(
              color: txtColor,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
