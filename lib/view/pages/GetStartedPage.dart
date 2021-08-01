import 'package:flutter/material.dart';
import 'package:mantap/shared/theme.dart';
import 'package:mantap/view/components/CustomButton.dart';

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/bg.png"), fit: BoxFit.fill)),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black12.withOpacity(0.1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Fly Like a Bird",
                  style: whiteTextStyle.copyWith(
                      fontSize: 32, fontWeight: semibold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Explore new world with us and let \n yourself get an amazing experiences",
                  style:
                      whiteTextStyle.copyWith(fontWeight: light, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                CustomButton(
                  title: "Get Started",
                  width: 220,
                  onPressed: () {
                    Navigator.pushNamed(context, "/sign-in");
                  },
                  margin: EdgeInsets.only(top: 50, bottom: 80),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
