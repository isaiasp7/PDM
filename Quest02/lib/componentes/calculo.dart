import 'package:flutter/material.dart';

class CalculoIMC {
  final double peso;
  final double altura;

  CalculoIMC({required this.peso, required this.altura});

  double get imc => peso / (altura * altura);

  String get classificacao {
    if (imc < 18.5) return 'Abaixo do peso';
    if (imc < 25) return 'Peso normal';
    if (imc < 30) return 'Sobrepeso';
    return 'Obesidade';
  }

  /// Mostra o pop-up com o resultado
  void mostrarResultado(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Resultado do IMC'),
        content: Text(
          'Seu IMC é ${imc.toStringAsFixed(2)}\n$classificacao',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Fechar'),
          ),
        ],
      ),
    );
  }
}