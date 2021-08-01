import 'package:flutter/material.dart';
import 'package:mantap/shared/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InterestItem extends StatelessWidget{
  final String title;
  InterestItem({required this.title});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 12,bottom: 8),
          width: 16,
          height: 16,
          child: Icon(FontAwesomeIcons.checkCircle),
        ),
        Text(title,style:blackTextStyle.copyWith(fontSize: 14,fontWeight: regular),)
      ],
    );
  }
}