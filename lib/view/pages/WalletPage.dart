import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:mantap/cubit/AuthCubit.dart';
import 'package:mantap/shared/theme.dart';
import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget{
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
                  NumberFormat.currency(locale: 'id',symbol: "IDR ",decimalDigits: 0).format(state.user.balance),
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
    return Scaffold(body: Center(child:bonusCard(),),);
  }
}