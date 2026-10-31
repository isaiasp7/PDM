import 'package:flutter/material.dart';

import '../data/campus_data.dart';
import '../widgets/information_card.dart';
import 'contacts_page.dart';
import 'details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Campus em Foco')),
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
                    'Seu campus,\nem foco.',
                    style: TextStyle(
                      fontSize: 38,
                      height: 1.08,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF171917),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Informações para estudantes do IFSertãoPE – Campus Salgueiro.',
                    style: TextStyle(fontSize: 16, color: Color(0xFF4B514B)),
                  ),
                  const SizedBox(height: 28),
                  InformationCard(
                    title: 'Campus Salgueiro',
                    description: 'Conheça o seu campus.',
                    buttonLabel: 'Ver informações',
                    icon: Icons.account_balance_outlined,
                    backgroundColor: const Color(0xFFC8F000),
                    onTap: () {
                      // Abre detalhes e envia o objeto do Campus pelo construtor.
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const DetailsPage(information: campusInformation),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 14),
                  const SizedBox(height: 10),
                  const Text(
                    'Cursos ofertados',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6),
                  const Text('Toque em uma categoria para ver os cursos.'),
                  const SizedBox(height: 20),
                  for (final group in [
                    ('Técnicos', technicalCourses),
                    ('Graduação', undergraduateCourses),
                    ('Pós-graduação', postgraduateCourses),
                  ]) ...[
                    Card(
                      margin: EdgeInsets.zero,
                      color: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ExpansionTile(
                        shape: const Border(),
                        collapsedShape: const Border(),
                        title: Text(
                          group.$1,
                          style: const TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text('${group.$2.length} cursos'),
                        children: [
                          for (final course in group.$2)
                            ListTile(
                              leading: Icon(course.icon),
                              title: Text(course.title),
                              subtitle: Text(course.subtitle),
                              trailing: const Icon(Icons.chevron_right_rounded),
                              onTap: () {
                                // Envia o curso escolhido à mesma tela de detalhes.
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        DetailsPage(information: course),
                                  ),
                                );
                              },
                            ),
                          const SizedBox(height: 8),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                  ],
                  Card(
                    margin: EdgeInsets.zero,
                    color: const Color(0xFF171917),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(22),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.contacts_outlined,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 14),
                          const Expanded(
                            child: Text(
                              'Contatos e serviços',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          IconButton.filledTonal(
                            tooltip: 'Abrir contatos',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ContactsPage(),
                                ),
                              );
                            },
                            icon: const Icon(Icons.arrow_forward_rounded),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
