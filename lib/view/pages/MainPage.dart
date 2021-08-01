import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mantap/cubit/PageCubit.dart';

import 'package:mantap/shared/theme.dart';
import 'package:mantap/view/components/CustomBottomNavigation.dart';
import 'package:mantap/view/pages/SettingPage.dart';
import 'package:mantap/view/pages/TransactionPage.dart';
import 'package:mantap/view/pages/WalletPage.dart';
import 'package:mantap/view/pages/WorldPage.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget buildContent(int currentIndex){
      switch(currentIndex){
        case 0:return WorldPage();
        case 1:return TransactionPage();
        case 2:return WalletPage();
        case 3:return SettingPage();
        default:return WorldPage();
      }

    }

    Widget customBottomNavigation() {
      return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: 60,
            margin: EdgeInsets.only(
                bottom: 30, left: defaultMargin, right: defaultMargin),
            decoration: BoxDecoration(
                color: whiteColor, borderRadius: BorderRadius.circular(18)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomBotttomNavigationItem(index: 0,iconData: FontAwesomeIcons.globeAsia,isSelected: true,),
                CustomBotttomNavigationItem(index: 1,iconData: FontAwesomeIcons.bookOpen,isSelected: false,),
                CustomBotttomNavigationItem(index: 2,iconData:FontAwesomeIcons.creditCard,isSelected: false,),
                CustomBotttomNavigationItem(index: 3,iconData: FontAwesomeIcons.cog,isSelected: false,)
              ],
            ),
          ));
    }

    return BlocBuilder<PageCubit,int>(
      builder: (context,state){
        return Scaffold(
          backgroundColor: backgroundColor,
          body: Stack(
            children: [buildContent(state), customBottomNavigation()],
          ),
        );
      },

    );
  }
}
