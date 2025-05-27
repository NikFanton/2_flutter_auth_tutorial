import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        minimumSize: const Size(double.infinity, 50),
        side: const BorderSide(color: Colors.black54),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      ),
      onPressed: () {  },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 12,
        children: [
          SvgPicture.asset(
            'assets/images/google_logo.svg',
            height: 21.0,
            width: 21.0,
          ),
          Text(
            'Sign in With Google',
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
