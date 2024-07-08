import 'package:atomic_design_tool/screens/buttons_screen.dart';
import 'package:atomic_design_tool/screens/cards_screen.dart';
import 'package:flutter/material.dart';
import 'package:tot_atomic_design/tot_atomic_design.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late final TextEditingController titleController;
  late final TextEditingController descriptionController;

  final screens = [
    const ButtonsScreen(),
    const CardsScreen(),
  ];

  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.surface,
      appBar: AppBar(
        title: const Text('Atomic Design Tool'),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  TotListTile(
                    isSelected: currentIndex == 0,
                    onTap: () => setState(() => currentIndex = 0),
                    title: 'Buttons',
                  ),
                  TotListTile(
                    isSelected: currentIndex == 1,
                    onTap: () => setState(() => currentIndex = 1),
                    title: 'Cards',
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 20,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: const VerticalDivider(),
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: context.colorScheme.surface,
              ),
              child: screens[currentIndex],
            ),
          ),
        ],
      ),
    );
  }
}
