import 'package:atomic_design_tool/solutions/approach_102/atoms/input.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return const Input(
      label: Text('Search'),
      hintText: 'Type to search',
      suffixIcon: Icon(Icons.search),
    );
  }
}
