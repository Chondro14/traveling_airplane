import 'package:mantap/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget{

  final String title;
  final double width;
  final Function() onPressed;
  final EdgeInsets margin;

  CustomButton({required this.title,required this.width,required this.onPressed,required this.margin});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: margin,
      width: width,
      height: 55,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultRadius))),
        onPressed:onPressed,
        child: Text(
          title,
          style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
        ),
      ),
    );
  }
}