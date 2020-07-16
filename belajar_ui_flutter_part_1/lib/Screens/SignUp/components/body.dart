import 'package:belajar_ui_part_1/Screens/Login/login_screen.dart';
import 'package:belajar_ui_part_1/Screens/SignUp/components/background.dart';
import 'package:belajar_ui_part_1/Screens/SignUp/components/or_divider.dart';
import 'package:belajar_ui_part_1/Screens/SignUp/components/socialicon.dart';
import 'package:belajar_ui_part_1/components/already_have_an_account_check.dart';
import 'package:belajar_ui_part_1/components/rounded_button.dart';
import 'package:belajar_ui_part_1/components/rounded_input_field.dart';
import 'package:belajar_ui_part_1/components/rounded_password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('SIGN UP', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              'assets/icons/signup.svg',
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: 'Your Email',
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: 'SIGN UP',
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen())),
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  iconSrc: 'assets/icons/facebook.svg',
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: 'assets/icons/twitter.svg',
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: 'assets/icons/google-plus.svg',
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
