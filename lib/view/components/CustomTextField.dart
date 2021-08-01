import 'package:flutter/material.dart';
import 'package:mantap/shared/theme.dart';

class CustomTextField extends StatelessWidget{
  final TextEditingController controller;
  final String title;
  final String hint;
  final bool obsecureText;

  CustomTextField({required this.hint,required this.title,required this.controller,required this.obsecureText});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: blackTextStyle.copyWith(fontSize: 14, fontWeight: regular),
        ),
        SizedBox(
          height: 6,
        ),
        TextField(
          cursorColor: blackColor,
          controller: controller,
          obscureText: obsecureText,
          style: blackTextStyle.copyWith(fontSize: 16, fontWeight: regular),
          decoration: InputDecoration(
              hintText: hint,
              hintStyle:
              blackTextStyle.copyWith(fontSize: 16, fontWeight: regular),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  borderSide: BorderSide(width: 1)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  borderSide: BorderSide(width: 1)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  borderSide: BorderSide(color: primaryColor, width: 1))),
        )
      ],
    );
  }
}