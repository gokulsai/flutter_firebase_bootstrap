import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  IconData icon;
  String hintText;
  TextInputType textInputType;
  Color textFieldColor, iconColor;
  bool obscureText;
  double bottomMargin;
  TextStyle textStyle, hintStyle;
  var validateFunction;
  var onSaved;
  Key key;

  //passing props in the Constructor.
  InputField(
      {this.key,
        this.hintText,
        this.obscureText,
        this.textInputType,
        this.textFieldColor,
        this.icon,
        this.iconColor,
        this.bottomMargin,
        this.textStyle,
        this.validateFunction,
        this.onSaved,
        this.hintStyle});

  @override
  Widget build(BuildContext context) {
    return (new Container(
        margin: new EdgeInsets.only(bottom: bottomMargin),

        child: new DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: new BorderRadius.all(new Radius.circular(30.0)),
            color: textFieldColor,
          ),
          child: new TextFormField(
            style: textStyle,
            key: key,
            obscureText: obscureText,
            keyboardType: textInputType,
            validator: validateFunction,
            onSaved: onSaved,
            decoration: new InputDecoration(
              hintText: hintText,
              hintStyle: hintStyle,
              border: InputBorder.none,

              icon: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child:Icon(
                    icon,
                    color: iconColor,
                  )
              ) ,
            ),
          ),
        )));
  }
}
