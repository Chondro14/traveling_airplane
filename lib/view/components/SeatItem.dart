import 'package:flutter/material.dart';
import 'package:mantap/cubit/SeatCubit.dart';
import 'package:mantap/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeatItem extends StatelessWidget{


  final String id;
  final bool isAvailable;

  SeatItem({required this.id, this.isAvailable = true});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    bool isSelected = context.read<SeatCubit>().isSelected(id);

    backgroundColor(){

      if(!isAvailable){
        return unavailableColor;
      }
      else{
        if(isSelected){
          return primaryColor;
        }
        else{
          return availableColor;
        }
      }

    }

    borderColor(){

      if(!isAvailable){
        return unavailableColor;
      }
      else{

          return primaryColor;


      }
    }

    child(){
      if(isSelected){
        return Center(child: Text("YOU",style: whiteTextStyle.copyWith(fontWeight: semibold),),);
      }
      else{
        return SizedBox();
      }
    }

    return  GestureDetector(
      onTap: (){
        if(isAvailable){
          context.read<SeatCubit>().selectSeat(id);
        }

      },
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
            color: backgroundColor(),
            borderRadius: BorderRadius.circular(12),border: Border.all(color: borderColor(),width: 2)),
        child: child(),

      ),
    );
  }
}