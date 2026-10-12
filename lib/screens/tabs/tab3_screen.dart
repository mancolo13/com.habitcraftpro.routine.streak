import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Habit Analytics', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        backgroundColor: AppTheme.surface,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(title: Text('Longest Ever Streak', style: TextStyle(color: Colors.white)), trailing: Text('84 Days', style: TextStyle(color: AppTheme.primary, fontWeight: FontWeight.bold))),
          ListTile(title: Text('Morning Completion Rate', style: TextStyle(color: Colors.white)), trailing: Text('96%', style: TextStyle(color: AppTheme.primary, fontWeight: FontWeight.bold))),
        ],
      ),
    );
  }
}
