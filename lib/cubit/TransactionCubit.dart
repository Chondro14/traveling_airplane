import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:mantap/Models/Transaction.dart';
import 'package:mantap/services/TransactionService.dart';

part 'TransactionState.dart';

class TransactionCubit extends Cubit<TransactionState>{
  TransactionCubit() : super(TransactionInitial());

  void createTransaction(TransactionModel transaction)async{
    try{
      emit(TransactionLoading());
      await TransactionService().createTransaction(transaction);
     emit(TransactionSuccess([]));
    }catch (e){
      emit(TransactionFailed(e.toString()));
    }
  }

  void fetchTransactions()async{
    try{
      emit(TransactionLoading());
      List<TransactionModel> transactions = await TransactionService().fetchTransactions();
      emit(TransactionSuccess(transactions));
    }
    catch(e){
      emit(TransactionFailed(e.toString()));
    }
  }

}