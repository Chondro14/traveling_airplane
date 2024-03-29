part of'TransactionCubit.dart';

abstract class TransactionState extends Equatable{
  const TransactionState();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class TransactionInitial extends TransactionState{}
class TransactionLoading extends TransactionState{}
class TransactionFailed extends TransactionState{
  final String error;
  TransactionFailed(this.error);

  @override
  // TODO: implement props
  List<Object?> get props => [error];
}
class TransactionSuccess extends TransactionState{
  final List<TransactionModel> transaction;
  TransactionSuccess(this.transaction);
}