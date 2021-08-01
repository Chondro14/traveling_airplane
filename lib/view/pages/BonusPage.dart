import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mantap/cubit/AuthCubit.dart';
import 'package:mantap/shared/theme.dart';
import 'package:mantap/view/components/CustomButton.dart';

class BonusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget bonusCard() {
      return BlocBuilder<AuthCubit,AuthState>(builder: (context , state){
        if(state is AuthSuccess){
          return Container(
            width: 300,
            height: 211,
            padding: EdgeInsets.all(defaultMargin),
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/Group2.png")),
                boxShadow: [
                  BoxShadow(
                      color: primaryColor.withOpacity(0.5),
                      blurRadius: 50,
                      offset: Offset(0, 10))
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name",
                            style: whiteTextStyle.copyWith(
                                fontSize: 14, fontWeight: light),
                          ),
                          Text(
                            "${state.user.name}",
                            style: whiteTextStyle.copyWith(
                                fontSize: 20, fontWeight: medium),
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/logologo.png"))),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "Pay",
                          style: whiteTextStyle.copyWith(
                              fontSize: 16, fontWeight: medium),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Balance",
                  style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),
                ),
                Text(
                  "IDR ${state.user.balance + 1000000}",
                  style: whiteTextStyle.copyWith(fontSize: 26, fontWeight: medium),
                )
              ],
            ),
          );
        }
        else{
          return SizedBox();
        }
      });

    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 80),
        child: Text(
          "Big Bonus 🎉",
          style: blackTextStyle.copyWith(fontSize: 32, fontWeight: semibold),
        ),
      );
    }

    Widget subtitle() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Text(
          "We give you early credit so that\nyou can buy a flight ticket",
          style: blackTextStyle.copyWith(fontSize: 16, fontWeight: light),
          textAlign: TextAlign.center,
        ),
      );
    }



    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [bonusCard(), title(), subtitle(), CustomButton(title: "Start Fly Now", width: 220, onPressed: (){
            Navigator.pushNamedAndRemoveUntil(context, "/main", (route) => false);
          },margin: EdgeInsets.only(top: 50),)],
        ),
      ),
    );
  }
}
