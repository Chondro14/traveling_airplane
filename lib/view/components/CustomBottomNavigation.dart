import 'package:flutter/material.dart';
import 'package:mantap/cubit/PageCubit.dart';
import 'package:mantap/shared/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bloc/bloc.dart';
import 'package:provider/src/provider.dart';

class CustomBotttomNavigationItem extends StatelessWidget{
  final int index;
  final IconData iconData;
  final bool isSelected;

  CustomBotttomNavigationItem({required this.index,required this.iconData,required this.isSelected });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  GestureDetector(
      onTap: (){
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Icon(
            iconData,
            color: context.read<PageCubit>().state == index ? primaryColor : greyColor,
            size: 24,
          ),
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
                color: context.read<PageCubit>().state == index ? primaryColor : greyColor,
                borderRadius: BorderRadius.circular(18)),
          )
        ],
      ),
    );
  }
}