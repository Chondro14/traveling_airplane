import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mantap/cubit/AuthCubit.dart';
import 'package:mantap/shared/theme.dart';
import 'package:mantap/view/pages/GetStartedPage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    // TODO: implement initState
   Timer(Duration(seconds: 3), (){

     User? user = FirebaseAuth.instance.currentUser;
     if (user == null){
       Navigator.pushNamed(context, '/get-started');
     }
     else{
       context.read<AuthCubit>().getCurrentUser(user.uid);
       Navigator.pushNamedAndRemoveUntil(context, "/main", (route) => false);
     }

   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/logologo.png"))),
            ),
            SizedBox(height: 50,),
            Text("AIRPLANE",style: whiteTextStyle.copyWith(fontWeight: medium,fontSize: 32,letterSpacing: 10),)
          ],
        ),
      ),
    );
  }
}
