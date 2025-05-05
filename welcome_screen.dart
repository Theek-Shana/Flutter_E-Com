import 'package:flutter/material.dart';
import 'package:flutter_login/screens/signin_screen.dart';
import 'package:flutter_login/screens/signup_screen.dart';
import 'package:flutter_login/theme/theme.dart';
import 'package:flutter_login/widgets/custom_scaffold.dart';
import 'package:flutter_login/widgets/welcome_button.dart';

class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return customScaffold(
      child: Column(
        children: [
          Flexible(
            flex: 8,
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 40.0,
                ),
            child: Center(
              child: RichText(
               textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Welcome Back! \n',
                      style: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.w600,
                      )
                    ),
                    TextSpan(
                        text:
                        ' \n Discover The World',
                        style: TextStyle(
                          fontSize: 25.0,
                          height: 0,
                        ))
                  ],
                ),
      ),
            ),

              )),
         Flexible(
            flex: 1,
          child:Align(
            alignment: Alignment.bottomRight ,

          child: Row(
           children: [
             Expanded(

               child: WelcomeButton(
                 ButtonText: 'Sign In',
                 onTap: SigninScreen(),
                 color: Colors.transparent,
                 textColor: Colors.white,
               ),
             ),


             Expanded(

               child:WelcomeButton(
                 ButtonText: 'Sign Up',
                 onTap:const SignupScreen(),
                 color: Colors.white,
                 textColor: lightColorScheme.primary,
               ),
             ),


    ],
    ),
          ),
          ),

        ],
      ),
    );
  }
}