import 'package:flutter/material.dart';

import '../atoms/textfield_atom.dart';

class SignInInputMolecule extends StatelessWidget {
  final String emailText;
  final String passwordText;

  final String emailTextFieldHint;
  final String passwordTextFieldHint;

  const SignInInputMolecule({
    super.key,
    required this.emailText,
    required this.passwordText,
    required this.emailTextFieldHint,
    required this.passwordTextFieldHint,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 12.0),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(emailText),
        ),
        const SizedBox(height: 12.0),
        TextfieldAtom.rounded(
          hintText: emailTextFieldHint,
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 12.0),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(passwordText),
        ),
        const SizedBox(height: 12.0),
        TextfieldAtom.rounded(
          hintText: passwordTextFieldHint,
          keyboardType: TextInputType.number,
          isPassword: true,
        ),
      ],
    );
  }
}
