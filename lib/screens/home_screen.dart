import 'package:atomic_design/atomic_design.dart';
import 'package:atomic_design_tool/screens/atoms_screen.dart';
import 'package:atomic_design_tool/screens/molecules_screen.dart';
import 'package:atomic_design_tool/screens/organisms_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: context.colorScheme.surface,
          appBar: AppBar(
            title: const Text('Atomic Design Solutions'),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Atoms'),
                Tab(text: 'Molecules'),
                Tab(text: 'Organisms'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              AtomsScreen(),
              MoleculesScreen(),
              OrganismsScreen(),
            ],
          )),
    );
  }
}
