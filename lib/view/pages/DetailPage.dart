import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mantap/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:mantap/view/components/CustomButton.dart';
import 'package:mantap/view/components/InterestItem.dart';
import 'package:mantap/view/components/PhotoItem.dart';
import 'package:mantap/view/pages/ChooseSeatPage.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/image8.png"), fit: BoxFit.cover)),
      );
    }

    Widget customShadow() {
      return Container(
        margin: EdgeInsets.only(top: 236),
        width: double.infinity,
        height: 214,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          whiteColor.withOpacity(0),
          Colors.black.withOpacity(0.85)
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Container(
              width: 108,
              height: 24,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("assets/emblem.png"))),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: 256, left: defaultMargin, right: defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lake Ciliwung",
                          style: whiteTextStyle.copyWith(
                              fontSize: 24, fontWeight: semibold),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "Tangerang",
                          style: whiteTextStyle.copyWith(
                              fontSize: 16, fontWeight: light),
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 4, right: 4),
                        child: Icon(
                          FontAwesomeIcons.solidStar,
                          color: Colors.amber,
                          size: 16,
                        ),
                      ),
                      Text(
                        "4.8",
                        style: whiteTextStyle.copyWith(
                            fontWeight: medium, fontSize: 14),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                  top: 20, left: defaultMargin, right: defaultMargin),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                  color: whiteColor, borderRadius: BorderRadius.circular(18)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About",
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semibold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.",
                    style: blackTextStyle.copyWith(
                        fontWeight: regular, fontSize: 14, height: 2.6),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Photos",
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semibold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        PhotoItem(imageUrl: "assets/image13.png"),
                        PhotoItem(imageUrl: "assets/image14.png"),
                        PhotoItem(imageUrl: "assets/image15.png"),
                        PhotoItem(imageUrl: "assets/image16.png"),
                        PhotoItem(imageUrl: "assets/image17.png")
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Interests",
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semibold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InterestItem(title: "Kids Park"),
                          SizedBox(
                            height: 4,
                          ),
                          InterestItem(title: "City Museum"),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InterestItem(title: "Honor Bridge"),
                          SizedBox(
                            height: 4,
                          ),
                          InterestItem(title: "Central Mall")
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 30,left: defaultMargin,right: defaultMargin,bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "IDR 2.500.000",
                        style: blackTextStyle.copyWith(
                            fontSize: 18, fontWeight: medium),
                      ),
                      Text("per Orang",style: blackTextStyle.copyWith(fontSize: 14,fontWeight: light),)
                    ],
                  ),
                  CustomButton(title: "Book Now", width: 170, onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> ChooseSeatPage()));}, margin: EdgeInsets.only(left: 15))
                ],
              ),
            )
          ],
        ),
      );
    }

    // TODO: implement build
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [backgroundImage(), customShadow(), content()],
        ),
      ),
    );
  }
}
