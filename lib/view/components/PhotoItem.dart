import 'package:flutter/material.dart';
import 'package:mantap/shared/theme.dart';

class PhotoItem extends StatelessWidget{
  final String imageUrl;

  PhotoItem({required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 70,
      height: 70,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: DecorationImage(
              image: AssetImage(imageUrl),fit: BoxFit.cover)),
    );
  }
}