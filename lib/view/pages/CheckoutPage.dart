import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mantap/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:mantap/view/components/BookingDetailsItems.dart';
import 'package:mantap/view/components/CustomButton.dart';
import 'package:mantap/view/pages/SuccessCheckoutPage.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    Widget route() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
              width: 291,
              height: 65,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("assets/Group6.png"))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CGK",
                      style: blackTextStyle.copyWith(
                          fontSize: 24, fontWeight: semibold),
                    ),
                    Text(
                      "Tangerang",
                      style: blackTextStyle.copyWith(
                          fontSize: 14, fontWeight: light),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "TLC",
                      style: blackTextStyle.copyWith(
                          fontSize: 24, fontWeight: semibold),
                    ),
                    Text(
                      "Ciliwung",
                      style: blackTextStyle.copyWith(
                          fontSize: 14, fontWeight: light),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      );
    }

    Widget bookingDetails() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            color: whiteColor, borderRadius: BorderRadius.circular(18)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 16),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: whiteColor, borderRadius: BorderRadius.circular(18)),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 16),
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        image: DecorationImage(
                            image: AssetImage("assets/image8.png"),
                            fit: BoxFit.cover)),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lake Ciliwung",
                          style: blackTextStyle.copyWith(
                              fontWeight: medium, fontSize: 18),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Tangerang",
                          style: blackTextStyle.copyWith(
                              fontSize: 14, fontWeight: light),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 2, bottom: 4),
                        child: Icon(
                          FontAwesomeIcons.solidStar,
                          color: Colors.amber,
                          size: 16,
                        ),
                      ),
                      Text(
                        "4.8",
                        style: blackTextStyle.copyWith(
                            fontSize: 14, fontWeight: medium),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                "Booking Details",
                style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: semibold),
              ),
            ),
            BookingDetailsItems(
              title: "Traveler",
              valueText: "2 Persons",
              valueColor: blackColor,
            ),
            BookingDetailsItems(
              title: "Seat",
              valueText: "A3,B3",
              valueColor: blackColor,
            ),
            BookingDetailsItems(
              title: "Insurance",
              valueText: "YES",
              valueColor: greenColor,
            ),
            BookingDetailsItems(
              title: "Refundable",
              valueText: "NO",
              valueColor: redColor,
            ),
            BookingDetailsItems(
              title: "V A T",
              valueText: "45%",
              valueColor: blackColor,
            ),
            BookingDetailsItems(
              title: "Price",
              valueText: "IDR 8.500.000",
              valueColor: blackColor,
            ),
            BookingDetailsItems(
              title: "Grand Total",
              valueText: "IDR 12.000.000",
              valueColor: primaryColor,
            ),
          ],
        ),
      );
    }

    Widget paymentDetails() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: whiteColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Payment Details",
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semibold),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 70,
                    margin: EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/Group2.png"))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          margin: EdgeInsets.only(right: 6),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/logologo.png"))),
                        ),
                        Text(
                          "Pay",
                          style: whiteTextStyle.copyWith(
                              fontSize: 16, fontWeight: medium),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "IDR 80.400.000",
                          style: blackTextStyle.copyWith(
                              fontSize: 18, fontWeight: medium),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "Current Balance",
                          style: blackTextStyle.copyWith(
                              fontSize: 14, fontWeight: light),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget payNowButton() {
      return CustomButton(
          title: "Pay Now",
          width: double.infinity,
          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>SuccessCheckoutPage()));},
          margin: EdgeInsets.only(top: 30, bottom: 30));
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 30, bottom: 30),
        child: Text(
          "Terms and Conditions",
          style: greyTextStyle.copyWith(fontSize: 16,fontWeight: light,decoration: TextDecoration.underline),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [route(), bookingDetails(), paymentDetails(), payNowButton(),tacButton()],
      ),
    );
  }
}
