import 'package:firebase_auth/firebase_auth.dart';
import 'package:mantap/Models/User.dart';
import 'package:mantap/services/UserService.dart';

class AuthService {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<UserModel> signIn({required String email,required String password})async{
    try{
      UserCredential userCredential = await auth.signInWithEmailAndPassword(email: email, password: password);
      UserModel user = await UserService().getUserById(userCredential.user!.uid);

      return user;
    }
    catch (e){
      throw e ;
    }

  }

  Future<UserModel> signUp({required String email,required String password,required String name,required String hobby})async{
    try{
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(email: email, password: password);

      UserModel user = UserModel(id: userCredential.user!.uid, name: name, balance: 0, email: email, hobby: hobby);

      await UserService().setUser(user);
      return user;
    }
    catch(e){
      throw e;
    }
  }
  Future<void> signOut()async{
    try{
      await auth.signOut();
    }
    catch (e){
      throw e;
    }
  }
}