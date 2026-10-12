import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Annual Streak Heatmap', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        backgroundColor: AppTheme.surface,
        elevation: 0,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(color: AppTheme.card, borderRadius: BorderRadius.circular(16)),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Consistency Index: 92%', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppTheme.primary)),
              SizedBox(height: 8),
              Text('248 active days logged this year with zero broken habits.', textAlign: TextAlign.center, style: TextStyle(color: AppTheme.textSecondary)),
            ],
          ),
        ),
      ),
    );
  }
}
