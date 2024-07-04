import 'package:atomic_design_tool/screens/atoms_screen.dart';
import 'package:atomic_design_tool/screens/molecules_screen.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final screens = [
    const AtomsScreen(),
    const MoleculesScreen(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atomic Design Tool'),
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.circle_small_20_regular),
            label: 'Atoms',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.resize_large_20_regular),
            label: 'Molecules',
          ),
        ],
      ),
    );
  }
}
