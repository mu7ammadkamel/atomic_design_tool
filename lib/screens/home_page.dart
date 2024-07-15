import 'package:atomic_design_tool/solutions/approach_101/approach101_screen.dart';
import 'package:atomic_design_tool/solutions/approach_102/approach102_screen.dart';
import 'package:flutter/material.dart';
import 'package:tot_atomic_design/tot_atomic_design.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: context.colorScheme.surface,
          appBar: AppBar(
            title: const Text('Atomic Design Solutions'),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Approach 101'),
                Tab(text: 'Approach 102'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Approach101Screen(),
              Approach102Screen(),
            ],
          )),
    );
  }
}
