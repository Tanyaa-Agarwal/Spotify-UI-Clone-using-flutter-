import 'package:flutter/material.dart';
class SimpleRoundButton extends StatelessWidget {
  SimpleRoundButton({this.colour,this.buttonTitle,this.onPressed});
  final Color colour ;
  final String buttonTitle;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 300.0,
          height: 45.0,
          child: Text(
            buttonTitle,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Montserrat',
              fontSize: 15.0,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );

  }
}