import 'package:flutter/material.dart';

// Widget reutilizado pelos cards da tela inicial.
class InformationCard extends StatelessWidget {
  final String title;
  final String description;
  final String buttonLabel;
  final IconData icon;
  final Color backgroundColor;
  final VoidCallback onTap;

  const InformationCard({
    super.key,
    required this.title,
    required this.description,
    required this.buttonLabel,
    required this.icon,
    required this.backgroundColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: backgroundColor,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 30),
            const SizedBox(height: 24),
            Text(
              title,
              style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            Text(description, style: const TextStyle(fontSize: 15)),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: onTap, child: Text(buttonLabel)),
          ],
        ),
      ),
    );
  }
}
