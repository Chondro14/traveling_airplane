import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mantap/Models/User.dart';
import 'package:mantap/services/AuthService.dart';
import 'package:mantap/services/UserService.dart';
import 'package:meta/meta.dart';

part 'AuthState.dart';

class AuthCubit extends Cubit<AuthState>{
  AuthCubit( ) : super(AuthInitial());


  void signIn({required String email,required String password})async{
    try{
      emit(AuthLoading());
      UserModel userModel = await AuthService().signIn(email: email, password: password);
      emit(AuthSuccess(userModel));
    }
    catch(e){
      emit(AuthFailed(e.toString()));
    }
  }
  void signUp({required String email,required String password,required String name,required String hobby})async{

    try{
      emit(AuthLoading());
      UserModel user = await AuthService().signUp(email: email, password: password, name: name, hobby: hobby);

      emit(AuthSuccess(user));
    }
    catch(e){
      emit(AuthFailed(e.toString()));
    }
  }
  void signOut()async{
    try{
      emit(AuthLoading());
      await AuthService().signOut();
      emit(AuthInitial());
    }
    catch(e){
      emit(AuthFailed(e.toString()));

    }
  }
  void getCurrentUser(String id)async{
    try{
      UserModel user = await UserService().getUserById(id);
      emit(AuthSuccess(user));
    }
    catch(e){
      emit(AuthFailed(e.toString()));

    }
  }
}