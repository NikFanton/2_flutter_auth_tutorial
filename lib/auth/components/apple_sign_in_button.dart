import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppleSignInButton extends StatelessWidget {
  const AppleSignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        minimumSize: const Size(double.infinity, 50),
        side: const BorderSide(color: Colors.black54),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      ),
      onPressed: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 12,
        children: [
          SvgPicture.asset(
            'assets/images/apple_logo.svg',
            height: 21.0,
            width: 21.0,
          ),
          Text(
            'Sign in With Apple',
            style: const TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }

  Future<void> _signInWithGoogle() async {
    // TODO Implement
  }
}
