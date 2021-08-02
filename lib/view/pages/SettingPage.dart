import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mantap/cubit/AuthCubit.dart';
import 'package:mantap/cubit/PageCubit.dart';
import 'package:mantap/shared/theme.dart';
import 'package:mantap/view/components/CustomButton.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocConsumer<AuthCubit, AuthState>(builder: (context, state) {
      if (state is AuthLoading) {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
      return Center(
        child: CustomButton(
            title: "Sign Out",
            width: 220,
            onPressed: () {
              context.read<AuthCubit>().signOut();
            },
            margin: EdgeInsets.zero),
      );
    }, listener: (context, state) {
      if (state is AuthFailed) {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(backgroundColor: redColor, content: Text(state.error)));
      } else if (state is AuthInitial) {
        context.read<PageCubit>().setPage(0);
        Navigator.pushNamedAndRemoveUntil(
            context, "/sign-in", (route) => false);
      }
    });
  }
}
