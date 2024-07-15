import 'package:flutter/material.dart';

import '../atoms/elevated_button_atom.dart';
import '../molecules/sign_in_input_molecule.dart';

class SignInCardInputParams {
  final String emailText;
  final String passwordText;

  final String emailTextFieldHint;
  final String passwordTextFieldHint;

  const SignInCardInputParams({
    required this.emailText,
    required this.passwordText,
    required this.emailTextFieldHint,
    required this.passwordTextFieldHint,
  });
}

class SignInCardButtonParams {
  final String forgotPasswordText;
  final String buttonText;

  final VoidCallback onForgotPasswordTap;
  final VoidCallback onButtonTap;

  const SignInCardButtonParams({
    required this.forgotPasswordText,
    required this.buttonText,
    required this.onForgotPasswordTap,
    required this.onButtonTap,
  });
}

class SignInCardOrganism extends StatelessWidget {
  final SignInCardInputParams signInCardInputParams;
  final SignInCardButtonParams signInCardButtonParams;

  const SignInCardOrganism({
    super.key,
    required this.signInCardInputParams,
    required this.signInCardButtonParams,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SignInInputMolecule(
              emailText: signInCardInputParams.emailText,
              emailTextFieldHint: signInCardInputParams.emailTextFieldHint,
              passwordText: signInCardInputParams.passwordText,
              passwordTextFieldHint:
                  signInCardInputParams.passwordTextFieldHint,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: signInCardButtonParams.onForgotPasswordTap,
                child: Text(signInCardButtonParams.forgotPasswordText),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 48.0,
                    child: ElevatedButtonAtom.rounded(
                      onPressed: signInCardButtonParams.onButtonTap,
                      child: Text(signInCardButtonParams.buttonText),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
