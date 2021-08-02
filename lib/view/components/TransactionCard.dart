import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:mantap/Models/Transaction.dart';
import 'package:mantap/shared/theme.dart';

import 'BookingDetailsItems.dart';

class TransactionCard extends StatelessWidget{
  final TransactionModel transactionModel;

  TransactionCard(this.transactionModel);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
                          image: NetworkImage(transactionModel.destinationModel.imageUrl),
                          fit: BoxFit.cover)),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        transactionModel.destinationModel.name,
                        style: blackTextStyle.copyWith(
                            fontWeight: medium, fontSize: 18),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        transactionModel.destinationModel.city,
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
                      transactionModel.destinationModel.rating.toString(),
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
            valueText: "${transactionModel.amountOfTraveler} Persons",
            valueColor: blackColor,
          ),
          BookingDetailsItems(
            title: "Seat",
            valueText: transactionModel.selectedSeats,
            valueColor: blackColor,
          ),
          BookingDetailsItems(
            title: "Insurance",
            valueText: transactionModel.insurance ? "YES":"NO",
            valueColor: greenColor,
          ),
          BookingDetailsItems(
            title: "Refundable",
            valueText: transactionModel.refundable ? "YES":"NO",
            valueColor: redColor,
          ),
          BookingDetailsItems(
            title: "V A T",
            valueText: "${transactionModel.vat * 100}%",
            valueColor: blackColor,
          ),
          BookingDetailsItems(
            title: "Price",
            valueText: NumberFormat.currency(locale: "id",symbol: "IDR ",decimalDigits: 0).format(transactionModel.price),
            valueColor: blackColor,
          ),
          BookingDetailsItems(
            title: "Grand Total",
            valueText: NumberFormat.currency(locale: "id",symbol: "IDR ",decimalDigits: 0).format(transactionModel.grandTotal),
            valueColor: primaryColor,
          ),
        ],
      ),
    );
  }
}