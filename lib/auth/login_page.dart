import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_tutorial/auth/components/animated_blur_circle.dart';
import 'package:flutter_auth_tutorial/auth/components/apple_sign_in_button.dart';
import 'package:flutter_auth_tutorial/auth/components/google_sign_in_button%20copy.dart';
import 'package:flutter_auth_tutorial/auth/components/sign_in_with_email_form.dart';
import 'package:flutter_auth_tutorial/theme/app_colors.dart';
import 'package:flutter_auth_tutorial/theme/app_text_styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
            Positioned(
            bottom: 30,
            left: -330,
            child: AnimatedBlurCircle(color: Color(0x00d107e3), size: 500),
          ),
             Positioned(
            top: 105,
            right: -250,
            child: AnimatedBlurCircle(
              color: AppColors.accent,
              size: 380,
              offset: -20,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(flex: 1),
                  Text('Jackson coffee', style: AppTextStyles.appName),
                  Text('Best coffee ever!', style: AppTextStyles.subtitle),
                  const Spacer(flex: 1),
                  SignInWithEmailForm(),
                     Padding(
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          child: AuthProvidersDilimiter(),
                        ),
                  Column(
                    spacing: 10,
                    children: [GoogleSignInButton(), AppleSignInButton()],
                  ),
                  const Spacer(flex: 1),
          
                  RichText(
                    text: TextSpan(
                      text: 'Don\'t have an account ',
                      style: const TextStyle(color: Colors.black, fontSize: 16),
                      children: [
                        TextSpan(
                          text: 'Sign up',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 224, 178, 40),
                            fontWeight: FontWeight.w600,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 18),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AuthProvidersDilimiter extends StatelessWidget {
  const AuthProvidersDilimiter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 6,
      children: [
        Container(color: Colors.black54, width: 30, height: 1),
        Text(
          'or',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        Container(color: Colors.black54, width: 30, height: 1),
      ],
    );
  }
}
