import 'package:flutter/material.dart';

import '../models/information.dart';

class DetailsPage extends StatelessWidget {
  final Information information;

  const DetailsPage({super.key, required this.information});

  @override
  Widget build(BuildContext context) {
    // O construtor entregou os dados que esta tela mostra.
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informações'),
        leading: IconButton(
          tooltip: 'Voltar',
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 560),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFFC8F000),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(information.icon, size: 38),
                  ),
                  const SizedBox(height: 28),
                  Text(
                    information.title,
                    style: const TextStyle(
                      fontSize: 34,
                      height: 1.1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    information.subtitle,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color(0xFF4B514B),
                    ),
                  ),
                  const SizedBox(height: 26),
                  Card(
                    margin: EdgeInsets.zero,
                    color: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(22),
                      child: Text(
                        information.description,
                        style: const TextStyle(fontSize: 17, height: 1.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
