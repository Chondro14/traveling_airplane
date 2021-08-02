import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mantap/Models/Destination.dart';
import 'package:mantap/services/DestinationService.dart';
part 'DestinationState.dart';
class DestinationCubit extends Cubit<DestinationState>{
  DestinationCubit() : super(DestinationInitial());

  void fetchDestinations()async{
    try{
      emit(DestinationLoading());
      List<DestinationModel> destinations = await DestinationService().fetchDestinations();
      emit(DestinationSuccess(destinations));
    }
    catch(e){
      emit(DestinationFailed(e.toString()));
    }
  }

}