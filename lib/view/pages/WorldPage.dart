import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mantap/cubit/AuthCubit.dart';
import 'package:mantap/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:mantap/view/components/DestinationCard.dart';
import 'package:mantap/view/components/DestinationTile.dart';

class WorldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    Widget header() {
      return BlocBuilder<AuthCubit,AuthState>(builder: (context,state){
        if(state is AuthSuccess){
          return   Container(
            margin:
            EdgeInsets.only(left: defaultMargin, right: defaultMargin, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello\n${state.user.name}",
                        style: blackTextStyle.copyWith(
                            fontSize: 24, fontWeight: semibold),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Where to fly today?",
                        style:
                        greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/pic_filled.png"),
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

    Widget popularDestinations() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                name: "Lake Ciliwung",
                imageUrl: "assets/image8.png",
                rating: 4.8,
                city: "Tangerang",
              ),
              DestinationCard(
                name: "White houses",
                city: "Spain",
                rating: 4.9,
                imageUrl: "assets/image7.png",
              ),
              DestinationCard(
                name: "Hill Heyo",
                city: "Monaco",
                rating: 4.8,
                imageUrl: "assets/image16.png",
              ),
              DestinationCard(
                name: "Menarra",
                city: "Japan",
                rating: 5.0,
                imageUrl: "assets/image17.png",
              ),
              DestinationCard(
                name: "Payung teduh",
                city: "Singapore",
                rating: 4.8,
                imageUrl: "assets/image18.png",
              )
            ],
          ),
        ),
      );
    }

    Widget newDestinations() {
      return Container(
        margin:
            EdgeInsets.only(top: 30, left: defaultMargin, right: defaultMargin,bottom: 140),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New This Year",
              style:
                  blackTextStyle.copyWith(fontSize: 18, fontWeight: semibold),
            ),
            DestinationTile(name: "Danau Beratan",city: "Singaraja",imageUrl: "assets/image11.png",rating: 4.5,),
            DestinationTile(name: "Sydney Opera",city: "Australia",imageUrl: "assets/image9.png",rating: 4.7,),
            DestinationTile(name: "Roma",city: "Italia",imageUrl: "assets/image13.png",rating: 4.8,),
            DestinationTile(name: "Payung Teduh",city: "Singapore",imageUrl: "assets/image18.png",rating: 4.5,),
            DestinationTile(name: "Hill Hey",city: "Monaco",imageUrl: "assets/image16.png",rating: 4.7,)
          ],
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [header(), popularDestinations(), newDestinations()],
      ),
    );
  }
}
