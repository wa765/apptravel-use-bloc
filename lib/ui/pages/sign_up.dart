import 'package:air_plane/ui/widgets/costum_button.dart';
import 'package:air_plane/ui/widgets/costum_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:air_plane/shared/theme.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Widget Komponen
    // Text
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          "Join us and get\nyour next journey",
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    // Widget input Section
    Widget inputSection() {
      // name input widget
      Widget nameInput() {
        return const CostumTextFormField(
            title: "Full Name", hintText: "Your Full Name ");
      }

      // Widget email input
      Widget emailInput() {
        return const CostumTextFormField(
            title: "Email", hintText: "Your Email Address");
      }

      // widget input password
      Widget passwordInput() {
        return const CostumTextFormField(
          title: "Password",
          hintText: "Your Password",
          obsecureText: true,
        );
      }

      // Widget input hoby
      Widget hobyInput() {
        return const CostumTextFormField(
            title: "Hobby", hintText: "Your Hobby");
      }

      // Widget getStarted Button
      Widget submitButton() {
        return CostumButton(
          title: "Get Started",
          margin: const EdgeInsets.only(top: 10),
          onPressed: () {
            Navigator.pushNamed(context, '/bonus-page');
          },
        );
      }

      //
      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobyInput(),
            submitButton(),
          ],
        ),
      );
    }

    //
    // Widget tacButton
    Widget tacButton() {
      return Container(
        margin: const EdgeInsets.only(top: 50, bottom: 50),
        child: Center(
          child: Text(
            "Terms and Conditions",
            style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
                decoration: TextDecoration.underline),
          ),
        ),
      );
    }

    //
    return Scaffold(
      backgroundColor: kBackgroundCollor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            title(),
            inputSection(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}
