import 'package:atomic_design/atomic_design.dart';
import 'package:flutter/material.dart';

class TotAddressCardMoleculeWidget extends StatelessWidget {
  const TotAddressCardMoleculeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TotAddressCardMolecule(
      title: "title",
      name: "name",
      address: "address",
      phoneNumber: "phone number",
      width: 300,
    );
  }
}
