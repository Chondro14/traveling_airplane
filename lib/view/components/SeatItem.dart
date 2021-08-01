import 'package:flutter/material.dart';
import 'package:mantap/shared/theme.dart';

class SeatItem extends StatelessWidget{

  final int status;

  SeatItem({required this.status});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    backgroundColor(){
      switch (status){
        case 0 :
          return availableColor;
        case 1:
          return primaryColor;
        case 2: return unavailableColor;
        default:
          return unavailableColor;
      }
    }

    borderColor(){
      switch(status){
        case 0:return primaryColor;
        case 1:return primaryColor;
        case 2:return unavailableColor;
        default:return unavailableColor;
      }
    }

    child(){
      switch(status){
        case 0:return SizedBox();
        case 1:return Center(child: Text("YOU",style: whiteTextStyle.copyWith(fontSize: 16,fontWeight: semibold),),);
        case 2:return SizedBox();
        default:return SizedBox();
      }
    }

    return  Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
          color: backgroundColor(),
          borderRadius: BorderRadius.circular(12),border: Border.all(color: borderColor(),width: 2)),
      child: child(),

    );
  }
}