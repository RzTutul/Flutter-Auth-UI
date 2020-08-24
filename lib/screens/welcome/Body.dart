import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_ui/components/round_button.dart';
import 'package:login_ui/constraints.dart';
import 'package:login_ui/screens/login/Login_Screen.dart';

import 'Background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Text(
            "Welcome to Chat App",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height*0.05),
          SvgPicture.asset("assets/icons/chat.svg",
            height: size.height * 0.45,
          ),
          SizedBox(height: size.height*0.05),

          RoundButton(
            text: "Login",
            press: ()
            {
              Navigator.push(context, MaterialPageRoute(
                builder: (context){
                 return LoginPage();
                }
              ));
            },
          ),
          RoundButton(
            text: "Singup",
            color: kPrimaryLightColor,
            textColor: Colors.black,
            press: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return LoginPage();
              }));
            },
          )

          

        ],

      ),
      ),
    );
  }
}

