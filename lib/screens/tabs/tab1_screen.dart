import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';

class Tab1Screen extends StatefulWidget {
  const Tab1Screen({super.key});

  @override
  State<Tab1Screen> createState() => _Tab1ScreenState();
}

class _Tab1ScreenState extends State<Tab1Screen> {
  final habits = [
    {'title': 'Morning Cold Shower', 'streak': 24, 'done': true},
    {'title': 'Read 20 Pages', 'streak': 18, 'done': true},
    {'title': 'No Sugar & Fasting', 'streak': 12, 'done': false},
    {'title': 'Night Journaling', 'streak': 35, 'done': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HabitForge • Routines', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        backgroundColor: AppTheme.surface,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.stars_rounded, color: AppTheme.secondary),
            onPressed: () => RoutingService.openRegistrationUrl(),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: habits.length,
        itemBuilder: (context, i) {
          final h = habits[i];
          final done = h['done'] as bool;
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: AppTheme.card, borderRadius: BorderRadius.circular(16)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(done ? Icons.check_circle : Icons.radio_button_unchecked, color: done ? AppTheme.primary : Colors.white38),
                      onPressed: () => setState(() => h['done'] = !done),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(h['title'] as String, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: done ? Colors.white70 : Colors.white, decoration: done ? TextDecoration.lineThrough : null)),
                        Text('🔥 ${h['streak']} Day Streak', style: const TextStyle(color: AppTheme.secondary, fontSize: 12)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
