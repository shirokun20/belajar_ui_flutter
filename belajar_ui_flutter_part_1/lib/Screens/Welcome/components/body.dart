import 'package:belajar_ui_part_1/Screens/Login/login_screen.dart';
import 'package:belajar_ui_part_1/Screens/SignUp/sign_up_screen.dart';
import 'package:belajar_ui_part_1/Screens/Welcome/components/background.dart';
import 'package:belajar_ui_part_1/components/rounded_button.dart';
import 'package:belajar_ui_part_1/constants.dart';
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
          children: <Widget>[
            Text('WELCOME TO EDU',
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              'assets/icons/chat.svg',
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: 'LOGIN',
              press: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen())),
            ),
            RoundedButton(
              text: 'SIGN UP',
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignUpScreen())),
            )
          ],
        ),
      ),
    );
  }
}
