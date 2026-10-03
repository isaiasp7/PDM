import 'package:flutter/material.dart';

import 'componentes/input.dart';
import './componentes/calculo.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final TextEditingController pesoController = TextEditingController();
  final TextEditingController alturaController = TextEditingController();

  @override
  void dispose() {
    pesoController.dispose();
    alturaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('calculadora de IMC '), centerTitle: true),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 54),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Input(
                placeholder: 'Digite seu Peso',
                valor: pesoController,
                width: 300,
              ),
              Input(
                placeholder: 'Digite sua altura',
                valor: alturaController,
                width: 300,
              ),
              const SizedBox(height: 42),
              SizedBox(
                width: 100,
                height: 50,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Calcular'),
                  onPressed: () {
                    final peso = double.parse(pesoController.text);
                    final altura = double.parse(alturaController.text);
                    CalculoIMC(
                      peso: peso,
                      altura: altura,
                    ).mostrarResultado(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
