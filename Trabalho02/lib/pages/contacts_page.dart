import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contatos e serviços'),
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
                  const SizedBox(height: 12),
                  const Text(
                    'Onde encontrar ajuda',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Serviços úteis para sua rotina no campus.',
                    style: TextStyle(fontSize: 16, color: Color(0xFF4B514B)),
                  ),
                  const SizedBox(height: 24),
                  Card(
                    margin: EdgeInsets.zero,
                    color: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.description_outlined),
                          title: Text('Secretaria'),
                          subtitle: Text('Atendimento acadêmico\ncs.secretaria@ifsertao-pe.edu.br'),
                          isThreeLine: true,
                        ),
                        Divider(height: 1),
                        ListTile(
                          leading: Icon(Icons.menu_book_outlined),
                          title: Text('Biblioteca'),
                          subtitle: Text('Informações e empréstimos\ncs.biblioteca@ifsertao-pe.edu.br'),
                          isThreeLine: true,
                        ),
                        Divider(height: 1),
                        ListTile(
                          leading: Icon(Icons.school_outlined),
                          title: Text('Coordenação'),
                          subtitle: Text('Sistemas para Internet\nfrancisco.fernandes@ifsertao-pe.edu.br'),
                          isThreeLine: true,
                        ),
                        Divider(height: 1),
                        ListTile(
                          leading: Icon(Icons.support_agent_outlined),
                          title: Text('Suporte acadêmico'),
                          subtitle: Text('Núcleo Pedagógico\ncs.nupe@ifsertao-pe.edu.br'),
                          isThreeLine: true,
                        ),
                      ],
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
