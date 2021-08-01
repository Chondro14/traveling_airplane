import 'package:mantap/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:mantap/view/components/CustomButton.dart';
import 'package:mantap/view/components/SeatItem.dart';
import 'package:mantap/view/pages/CheckoutPage.dart';

class ChooseSeatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          "Select Your\nFavorite Seat",
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semibold),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                      color: greyColor,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: primaryColor, width: 4)),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "Available",
                  style: blackTextStyle.copyWith(
                      fontSize: 14, fontWeight: regular),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: primaryColor, width: 1)),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "Selected",
                  style: blackTextStyle.copyWith(
                      fontSize: 14, fontWeight: regular),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                      color: greyColor,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: greyColor, width: 1)),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "Unavailable",
                  style: blackTextStyle.copyWith(
                      fontSize: 14, fontWeight: regular),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget selectedSeat() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: whiteColor),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        "A",
                        style: greyTextStyle.copyWith(
                            fontSize: 16, fontWeight: regular),
                      ),
                    )),
                Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        "B",
                        style: greyTextStyle.copyWith(
                            fontSize: 16, fontWeight: regular),
                      ),
                    )),
                Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        "",
                        style: greyTextStyle.copyWith(
                            fontSize: 16, fontWeight: regular),
                      ),
                    )),
                Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        "C",
                        style: greyTextStyle.copyWith(
                            fontSize: 16, fontWeight: regular),
                      ),
                    )),
                Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        "D",
                        style: greyTextStyle.copyWith(
                            fontSize: 16, fontWeight: regular),
                      ),
                    ))
              ],
            ),
            //Note seat
            Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SeatItem(
                      status: 2,
                    ),
                    SeatItem(
                      status: 2,
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                          child: Text(
                        "1",
                        style: greyTextStyle.copyWith(
                            fontSize: 16, fontWeight: regular),
                      )),
                    ),
                    SeatItem(
                      status: 0,
                    ),
                    SeatItem(
                      status: 2,
                    )
                  ],
                )),
            Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SeatItem(
                      status: 0,
                    ),
                    SeatItem(
                      status: 0,
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                          child: Text(
                        "2",
                        style: greyTextStyle.copyWith(
                            fontSize: 16, fontWeight: regular),
                      )),
                    ),
                    SeatItem(
                      status: 0,
                    ),
                    SeatItem(
                      status: 2,
                    )
                  ],
                )),
            Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SeatItem(
                      status: 1,
                    ),
                    SeatItem(
                      status: 1,
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                          child: Text(
                        "3",
                        style: greyTextStyle.copyWith(
                            fontSize: 16, fontWeight: regular),
                      )),
                    ),
                    SeatItem(
                      status: 0,
                    ),
                    SeatItem(
                      status: 0,
                    )
                  ],
                )),
            Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SeatItem(
                      status: 0,
                    ),
                    SeatItem(
                      status: 2,
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                          child: Text(
                        "4",
                        style: greyTextStyle.copyWith(
                            fontSize: 16, fontWeight: regular),
                      )),
                    ),
                    SeatItem(
                      status: 0,
                    ),
                    SeatItem(
                      status: 0,
                    )
                  ],
                )),
            Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SeatItem(
                      status: 0,
                    ),
                    SeatItem(
                      status: 0,
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                          child: Text(
                        "5",
                        style: greyTextStyle.copyWith(
                            fontSize: 16, fontWeight: regular),
                      )),
                    ),
                    SeatItem(
                      status: 2,
                    ),
                    SeatItem(
                      status: 0,
                    )
                  ],
                )),
            //Note your seat

            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your seat",
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                  Text(
                    "A3,B3",
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: greyTextStyle.copyWith(fontWeight: light),
                  ),
                  Text(
                    "IDR 540.000.000",
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget checkoutButton() {
      return CustomButton(
          title: "Continue to Checkout",
          width: double.infinity,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CheckoutPage()));
          },
          margin: EdgeInsets.only(top: 30, bottom: 46));
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [title(), seatStatus(), selectedSeat(), checkoutButton()],
      ),
    );
  }
}
