import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:mantap/Models/Destination.dart';
import 'package:mantap/cubit/SeatCubit.dart';
import 'package:mantap/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:mantap/view/components/CustomButton.dart';
import 'package:mantap/view/components/SeatItem.dart';
import 'package:mantap/view/pages/CheckoutPage.dart';


class ChooseSeatPage extends StatefulWidget {

  DestinationModel model;

  ChooseSeatPage(this.model, {Key? key}) :super(key: key);

  @override
  _ChooseSeatPageState createState() => _ChooseSeatPageState();
}

class _ChooseSeatPageState extends State<ChooseSeatPage> {
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
      return BlocBuilder<SeatCubit, List<String>>(builder: (context, state) {
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
                        isAvailable: false,
                        id: "A1",
                      ),
                      SeatItem(
                        isAvailable: false,
                        id: "B1",
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

                        id: "C1",
                      ),
                      SeatItem(

                        id: "D1",
                      )
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SeatItem(

                        id: "A2",
                      ),
                      SeatItem(

                        id: "B2",
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

                        id: "C2",
                      ),
                      SeatItem(

                        id: "D2",
                      )
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SeatItem(

                        id: "A3",
                      ),
                      SeatItem(

                        id: "B3",
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

                        id: "C3",
                      ),
                      SeatItem(

                        id: "D3",
                      )
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SeatItem(

                        id: "A4",
                      ),
                      SeatItem(

                        id: "B4",
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

                        id: "C4",
                      ),
                      SeatItem(

                        id: "D4",
                      )
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SeatItem(

                        id: "A5",
                      ),
                      SeatItem(

                        id: "B5",
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

                        id: "C5",
                      ),
                      SeatItem(

                        id: "D5",
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
                    Flexible(
                      child: Text(
                        state.join(", "),
                        style: blackTextStyle.copyWith(
                            fontSize: 16, fontWeight: medium),
                      ),
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
                      NumberFormat.currency(
                          symbol: "IDR ", locale: "id", decimalDigits: 0)
                          .format(state.length * widget.model.price),
                      style: blackTextStyle.copyWith(
                          fontSize: 16, fontWeight: medium),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      });
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
