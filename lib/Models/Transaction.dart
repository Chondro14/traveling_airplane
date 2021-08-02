import 'package:equatable/equatable.dart';
import 'package:mantap/Models/Destination.dart';

class TransactionModel extends Equatable {
  final DestinationModel destinationModel;
  final int amountOfTraveler;
  final String selectedSeats;
  final bool insurance;
  final bool refundable;
  final double vat;
  final int price;
  final int grandTotal;
  final String id;

  TransactionModel(
      {required this.destinationModel,
      this.id = "",
      this.amountOfTraveler = 0,
      this.selectedSeats = "",
      this.insurance = false,
      this.refundable = false,
      this.vat = 0,
      this.price = 0,
      this.grandTotal = 0});
  @override
  // TODO: implement props
  List<Object?> get props => [
        destinationModel,
        amountOfTraveler,
        selectedSeats,
        insurance,
        refundable,
        vat,
        price,
        grandTotal
      ];

  factory TransactionModel.fromJson(String id, Map<String, dynamic> json) =>
      TransactionModel(
          destinationModel: DestinationModel.fromJson(
              json['destination']['id'], json['destination']),
          id: id,
          amountOfTraveler: json['amountOfTraveler'],
          selectedSeats: json['selectedSeats'],
          insurance: json['insurance'],
          refundable: json['refundable'],
          vat: json['vat'],
          price: json['price'],
          grandTotal: json['grandTotal']);
}
