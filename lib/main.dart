import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mantap/cubit/AuthCubit.dart';
import 'package:mantap/cubit/DestinationCubit.dart';
import 'package:mantap/cubit/PageCubit.dart';
import 'package:mantap/cubit/SeatCubit.dart';
import 'package:mantap/cubit/TransactionCubit.dart';
import 'package:mantap/view/pages/BonusPage.dart';
import 'package:mantap/view/pages/GetStartedPage.dart';
import 'package:mantap/view/pages/MainPage.dart';
import 'package:mantap/view/pages/SignInPage.dart';
import 'package:mantap/view/pages/SignUpPage.dart';
import 'package:mantap/view/pages/SplashPage.dart';
import 'package:mantap/view/pages/SuccessCheckoutPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PageCubit()),
        BlocProvider(create: (context) => AuthCubit()),
        BlocProvider(create: (context) => DestinationCubit()),
        BlocProvider(create: (context)=> SeatCubit()),
        BlocProvider(create: (context)=>TransactionCubit())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/get-started': (context) => GetStartedPage(),
          '/sign-up': (context) => SignUpPage(),
          '/sign-in': (context) => SignInPage(),
          '/bonus': (context) => BonusPage(),
          '/main': (context) => MainPage(),
          '/success':(context)=>SuccessCheckoutPage()
        },
      ),
    );
  }
}
