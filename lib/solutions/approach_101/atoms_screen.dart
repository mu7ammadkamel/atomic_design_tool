import 'package:atomic_design_tool/solutions/approach_101/atoms/app_bar_atom.dart';
import 'package:atomic_design_tool/solutions/approach_101/atoms/elevated_button_atom.dart';
import 'package:atomic_design_tool/solutions/approach_101/atoms/textfield_atom.dart';
import 'package:atomic_design_tool/solutions/approach_101/molecules/sign_in_input_molecule.dart';
import 'package:atomic_design_tool/solutions/approach_101/organism/sign_in_card_organism.dart';
import 'package:flutter/material.dart';
import 'package:tot_atomic_design/tot_atomic_design.dart';

class AtomsScreen extends StatefulWidget {
  const AtomsScreen({
    super.key,
  });

  @override
  State<AtomsScreen> createState() => _AtomsScreenState();
}

class _AtomsScreenState extends State<AtomsScreen> {
  late final TextEditingController titleController;
  late final TextEditingController descriptionController;

  int currentIndex = 1;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController();
    descriptionController = TextEditingController();
  }

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Wrap(
        runSpacing: 14.0,
        children: [
          /// Atoms
          Text(
            "Atoms",
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: context.colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const Divider(),
          AppBarAtom.transparent(
            title: 'AppBarAtom.transparent',
          ),
          ElevatedButtonAtom.rounded(
            child: const Text('ElevatedButtonAtom.rounded'),
            onPressed: () {},
          ),
          TextfieldAtom.rounded(
            hintText: 'Title',
            isDense: true,
            keyboardType: TextInputType.multiline,
            controller: descriptionController,
          ),

          /// Molecules
          Text(
            "Molecules",
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: context.colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const Divider(),
          const SignInInputMolecule(
            emailText: 'Email Title',
            emailTextFieldHint: 'Email hint',
            passwordText: 'Password Title',
            passwordTextFieldHint: 'Password hint',
          ),

          /// Organisms
          SignInCardOrganism(
            signInCardInputParams: const SignInCardInputParams(
              emailText: 'Email Title',
              emailTextFieldHint: 'Email hint',
              passwordText: 'Password Title',
              passwordTextFieldHint: 'Password hint',
            ),
            signInCardButtonParams: SignInCardButtonParams(
              forgotPasswordText: 'Forgot password?',
              buttonText: 'Sign in',
              onForgotPasswordTap: () {},
              onButtonTap: () {},
            ),
          )
        ],
      ),
    );
  }
}
