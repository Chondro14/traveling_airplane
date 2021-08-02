import 'package:mantap/cubit/PageCubit.dart';
import 'package:mantap/shared/theme.dart';

import 'package:flutter/material.dart';
import 'package:mantap/view/components/CustomButton.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SuccessCheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 150,
              margin: EdgeInsets.only(bottom: 80),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/scheduling.png"))),
            ),
            Text("Well Booked 😍",style: blackTextStyle.copyWith(fontWeight: semibold,fontSize: 32),),
            SizedBox(height: 10,),
            Text("Are you ready to explore the new\nworld of experiences?",style: greyTextStyle.copyWith(fontWeight: light,fontSize: 16),textAlign: TextAlign.center,),
            
            CustomButton(title: "My Bookings", width: 220, onPressed: (){
              context.read<PageCubit>().setPage(1);
              Navigator.pushNamedAndRemoveUntil(context, "/main", (route) => false);
            }, margin: EdgeInsets.only(top: 50))
          ],
        ),
      ),
    );
  }
}
