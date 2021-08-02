import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mantap/Models/Destination.dart';
import 'package:mantap/cubit/AuthCubit.dart';
import 'package:mantap/cubit/DestinationCubit.dart';
import 'package:mantap/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:mantap/view/components/DestinationCard.dart';
import 'package:mantap/view/components/DestinationTile.dart';

class WorldPage extends StatefulWidget {
  @override
  _WorldPageState createState() => _WorldPageState();
}

class _WorldPageState extends State<WorldPage> {
  @override
  void initState() {
    // TODO: implement initState
    context.read<DestinationCubit>().fetchDestinations();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    Widget header() {
      return BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
        if (state is AuthSuccess) {
          return Container(
            margin: EdgeInsets.only(
                left: defaultMargin, right: defaultMargin, top: 30),
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
                        style: greyTextStyle.copyWith(
                            fontSize: 16, fontWeight: light),
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
        } else {
          return SizedBox();
        }
      });
    }

    Widget popularDestinations(List<DestinationModel> model) {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: model.map((e) => DestinationCard(model: e)).toList()),
        ),
      );
    }

    Widget newDestinations(List<DestinationModel> model) {
      return Container(
        margin: EdgeInsets.only(
            top: 30, left: defaultMargin, right: defaultMargin, bottom: 140),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New This Year",
              style:
                  blackTextStyle.copyWith(fontSize: 18, fontWeight: semibold),
            ),
            Column(children: model.map((e) => DestinationTile(model: e,)).toList(),)
          ]
        ),
      );
    }

    return BlocConsumer<DestinationCubit, DestinationState>(
        builder: (context, state) {
      if (state is DestinationSuccess) {
        return  ListView(
            children: [
              header(),
              popularDestinations(state.destinations),
              newDestinations(state.destinations)
            ],
          )
        ;
      }
      return Center(
        child: CircularProgressIndicator(),
      );
    }, listener: (context, state) {
      if (state is DestinationFailed) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: redColor,
            content: Text(
              state.error,
              style: whiteTextStyle,
            )));
      }
    });
  }
}
