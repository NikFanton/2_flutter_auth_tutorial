import 'package:flutter/material.dart';
import 'package:flutter_auth_tutorial/auth/login_page.dart';

class SignInWithEmailForm extends StatefulWidget {
  const SignInWithEmailForm({super.key});

  @override
  State<SignInWithEmailForm> createState() => _SignInWithEmailFormState();
}

class _SignInWithEmailFormState extends State<SignInWithEmailForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordFocusNode = FocusNode();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        spacing: 11,
        children: [
          TextFormField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            onTapOutside:
                (event) => FocusManager.instance.primaryFocus?.unfocus(),
            onFieldSubmitted:
                (_) => FocusScope.of(context).requestFocus(_passwordFocusNode),
            decoration: InputDecoration(
              hintText: 'email',
              prefixIcon: const Icon(Icons.email_outlined),
            ),
            validator: (value) {
              if (value!.trim().isEmpty || !value.contains('@')) {
                return 'Invalid email!';
              }
              return null;
            },
          ),

          TextFormField(
            controller: _passwordController,
            focusNode: _passwordFocusNode,
            obscureText: true,
            textInputAction: TextInputAction.done,
            onTapOutside:
                (event) => FocusManager.instance.primaryFocus?.unfocus(),
            decoration: InputDecoration(
              hintText: 'password',
              prefixIcon: const Icon(Icons.lock_outline),
            ),
            onFieldSubmitted: (_) => _signInWithEmail(),
            validator: (value) {
              if (value!.trim().isEmpty || value.length < 8) {
                return 'Password is too short!';
              }
              return null;
            },
          ),

          ElevatedButton(onPressed: _signInWithEmail,  style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ), child: Text('Login')),
        ],
      ),
    );
  }

  Future<void> _signInWithEmail() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    // TODO Implement login logic
  }
}
