import 'package:flutter/material.dart';

import '../models/information.dart';

const campusInformation = Information(
  title: 'Campus Salgueiro',
  subtitle: 'IFSertãoPE',
  description: 'O Campus Salgueiro integra o Instituto Federal do Sertão Pernambucano e oferece formação técnica e superior para estudantes da região.',
  icon: Icons.account_balance_outlined,
);

const courseInformation = Information(
  title: 'Sistemas para Internet',
  subtitle: 'Conheça o curso',
  description: 'Curso voltado ao desenvolvimento de aplicações e soluções para ambientes web e digitais.',
  icon: Icons.code_rounded,
);

const technicalCourses = [
  Information(
    title: 'Agropecuária · Integrado',
    subtitle: 'Técnico integrado ao Ensino Médio',
    description: 'Formação técnica em Agropecuária junto com o Ensino Médio.',
    icon: Icons.agriculture_outlined,
  ),
  Information(
    title: 'Edificações · Integrado',
    subtitle: 'Técnico integrado ao Ensino Médio',
    description: 'Formação técnica em Edificações junto com o Ensino Médio.',
    icon: Icons.apartment_outlined,
  ),
  Information(
    title: 'Informática · Integrado',
    subtitle: 'Técnico integrado ao Ensino Médio',
    description: 'Formação técnica em Informática junto com o Ensino Médio.',
    icon: Icons.computer_outlined,
  ),
  Information(
    title: 'Agropecuária · Subsequente',
    subtitle: 'Técnico após o Ensino Médio',
    description:
        'Curso técnico em Agropecuária para quem já concluiu o Ensino Médio.',
    icon: Icons.agriculture_outlined,
  ),
  Information(
    title: 'Edificações · Subsequente',
    subtitle: 'Técnico após o Ensino Médio',
    description:
        'Curso técnico em Edificações para quem já concluiu o Ensino Médio.',
    icon: Icons.apartment_outlined,
  ),
];

const undergraduateCourses = [
  courseInformation,
  Information(
    title: 'Engenharia Civil',
    subtitle: 'Bacharelado',
    description:
        'Graduação em Engenharia Civil ofertada pelo Campus Salgueiro.',
    icon: Icons.engineering_outlined,
  ),
  Information(
    title: 'Física',
    subtitle: 'Licenciatura',
    description: 'Graduação em Física voltada à formação de professores.',
    icon: Icons.science_outlined,
  ),
  Information(
    title: 'Tecnologia em Alimentos',
    subtitle: 'Tecnólogo',
    description: 'Graduação tecnológica na área de alimentos.',
    icon: Icons.restaurant_outlined,
  ),
];

const postgraduateCourses = [
  Information(
    title: 'Educação Profissional e Tecnológica',
    subtitle: 'Mestrado profissional · ProfePT',
    description:
        'Mestrado profissional em Educação Profissional e Tecnológica.',
    icon: Icons.school_outlined,
  ),
  Information(
    title: 'Metodologias do Ensino de Línguas',
    subtitle: 'Especialização · A distância',
    description: 'Especialização em metodologias do ensino de línguas.',
    icon: Icons.menu_book_outlined,
  ),
  Information(
    title: 'Recursos Hídricos para o Semiárido',
    subtitle: 'Especialização · A distância',
    description: 'Especialização em recursos hídricos para o Semiárido.',
    icon: Icons.water_drop_outlined,
  ),
];
