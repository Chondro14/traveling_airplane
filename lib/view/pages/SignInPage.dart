import 'package:mantap/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:mantap/view/components/CustomTextField.dart';
import 'package:mantap/view/components/CustomButton.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mantap/cubit/AuthCubit.dart';


class SignInPage extends StatelessWidget{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget title() {
      return Container(
          margin: EdgeInsets.only(top: 30),
          child: Text(
            "Sign in with\nyour existing account",
            style: blackTextStyle.copyWith(fontWeight: semibold, fontSize: 24),
          ));
    }

    Widget emailInput() {
      return CustomTextField(
          hint: "Your email",
          title: "Email Address",
          controller: emailController,
          obsecureText: false);
    }

    Widget passwordInput() {
      return CustomTextField(
          hint: "Your Password",
          title: "Password",
          controller: passwordController,
          obsecureText: true);
    }



    Widget submitButton() {
      return BlocConsumer<AuthCubit, AuthState>(builder: (context, state) {
        if (state is AuthLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return CustomButton(
          title: "Sign In",
          width: double.infinity,
          onPressed: () {
            print(passwordController.text);
            context.read<AuthCubit>().signIn(email: emailController.text, password: passwordController.text.toString());
          },
          margin: EdgeInsets.only(top: 50, bottom: 80),
        );
      }, listener: (context, state) {
        if (state is AuthSuccess) {
          Navigator.pushNamedAndRemoveUntil(
              context, "/main", (route) => false);
        } else if (state is AuthFailed) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: redColor,
              content: Text(
                state.error,
                style: whiteTextStyle.copyWith(),
              )));
        }
      });
    }
    Widget inputSection() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            emailInput(),
            SizedBox(
              height: 20,
            ),
            passwordInput(),

            SizedBox(
              height: 20,
            ),
            submitButton()
          ],
        ),
      );
    }



    Widget tacButton() {
      return GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, "/sign-up");
        },
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 50, bottom: 73),
          child: Text(
            "Dont have account? Sign up",
            style: greyTextStyle.copyWith(
                fontWeight: light,
                fontSize: 16,
                decoration: TextDecoration.underline),
          ),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [title(), inputSection(), tacButton()],
        ),
      ),
    );
  }
}