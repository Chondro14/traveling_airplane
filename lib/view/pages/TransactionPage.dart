import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mantap/cubit/TransactionCubit.dart';
import 'package:mantap/shared/theme.dart';
import 'package:mantap/view/components/TransactionCard.dart';

class TransactionPage extends StatefulWidget {
  @override
  _TransactionPageState createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  void initState() {
    // TODO: implement initState
    context.read<TransactionCubit>().fetchTransactions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocBuilder<TransactionCubit, TransactionState>(
        builder: (context, state) {
      if (state is TransactionLoading) {
        return Center(
          child: CircularProgressIndicator(),
        );
      } else if (state is TransactionSuccess) {
        if(state.transaction.length == 0){
          return Center(child: Text("Maaf kamu belum\nmemiliki Transaksi",style: purpleTextStyle.copyWith(fontSize: 32,fontWeight: medium),),);
        }
        else{
          return ListView.builder(
              itemCount: state.transaction.length,
              padding: EdgeInsets.symmetric(horizontal: defaultMargin,vertical: 40),
              itemBuilder: (context, index) {
                return TransactionCard(state.transaction[index]);
              });
        }

      }
      else{
        return SizedBox();
      }
    });
  }
}
