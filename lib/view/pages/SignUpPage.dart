import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mantap/cubit/AuthCubit.dart';
import 'package:mantap/shared/theme.dart';
import 'package:mantap/view/components/CustomButton.dart';
import 'package:mantap/view/components/CustomTextField.dart';

class SignUpPage extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController hobbyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    Widget title() {
      return Container(
          margin: EdgeInsets.only(top: 30),
          child: Text(
            "Join us and get \nyour next journey",
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

    Widget hobbyInput() {
      return CustomTextField(
          hint: "Your Hobby",
          title: "Hobby",
          controller: hobbyController,
          obsecureText: false);
    }

    Widget submitButton() {
      return BlocConsumer<AuthCubit, AuthState>(builder: (context, state) {
        if (state is AuthLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return CustomButton(
          title: "Get Started",
          width: double.infinity,
          onPressed: () {
            context.read<AuthCubit>().signUp(
                email: emailController.text,
                password: passwordController.text,
                name: nameController.text,
                hobby: hobbyController.text);
          },
          margin: EdgeInsets.only(top: 50, bottom: 80),
        );
      }, listener: (context, state) {
        if (state is AuthSuccess) {
          Navigator.pushNamedAndRemoveUntil(
              context, "/bonus", (route) => false);
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
            CustomTextField(
                hint: "Your full name",
                title: "Full Name",
                controller: nameController,
                obsecureText: false),
            SizedBox(
              height: 20,
            ),
            emailInput(),
            SizedBox(
              height: 20,
            ),
            passwordInput(),
            SizedBox(
              height: 20,
            ),
            hobbyInput(),
            SizedBox(
              height: 20,
            ),
            submitButton()
          ],
        ),
      );
    }



    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 50, bottom: 73),
        child: Text(
          "Tems and Conditions",
          style: greyTextStyle.copyWith(
              fontWeight: light,
              fontSize: 16,
              decoration: TextDecoration.underline),
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
