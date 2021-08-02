import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mantap/Models/User.dart';

class UserService{
  CollectionReference userReference = FirebaseFirestore.instance.collection("users");

  Future<void> setUser(UserModel user)async{
    try{
      userReference.doc(user.id).set({
        'email':user.email,
        'name':user.name,
        'hobby':user.hobby,
        'balance':user.balance
      });
    }
    catch(e){

    }
  }
  Future<UserModel> getUserById(String id)async{
    try{
      DocumentSnapshot snapshot = await userReference.doc(id).get();
      return UserModel(id: id, name: snapshot['name'], balance: snapshot['balance'], email: snapshot['email'], hobby: snapshot['hobby']);
    }
    catch(e){
      throw e;
    }
  }
}