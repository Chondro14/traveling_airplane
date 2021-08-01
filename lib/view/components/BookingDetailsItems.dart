import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mantap/shared/theme.dart';

class BookingDetailsItems extends StatelessWidget{

  final String title;
  final String valueText;
  final Color valueColor;

  BookingDetailsItems({required this.title,required this.valueColor,required this.valueText});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 12,bottom: 10),
            child: Icon(
              FontAwesomeIcons.checkCircle,
              color: primaryColor,
            ),
          ),
          Text(
            title,
            style: blackTextStyle,
          ),
          Spacer(),
          Text(valueText,style: blackTextStyle.copyWith(fontWeight: semibold,fontSize: 14,color: valueColor),)
        ],
      ),
    );
  }
}