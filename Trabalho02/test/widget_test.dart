import 'package:flutter_test/flutter_test.dart';
import 'package:campus_em_foco/main.dart';

void main() {
  testWidgets('Campus e Curso usam detalhes com dados diferentes', (
    tester,
  ) async {
    await tester.pumpWidget(const CampusEmFocoApp());
    await tester.tap(find.text('Ver informações'));
    await tester.pumpAndSettle();
    expect(find.text('IFSertãoPE'), findsOneWidget);

    await tester.tap(find.byTooltip('Voltar'));
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.text('Técnicos'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Técnicos'));
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.text('Agropecuária · Integrado'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Agropecuária · Integrado'));
    await tester.pumpAndSettle();
    expect(find.text('Agropecuária · Integrado'), findsOneWidget);
  });

  testWidgets('Contatos abre e retorna à tela inicial', (tester) async {
    await tester.pumpWidget(const CampusEmFocoApp());
    await tester.ensureVisible(find.byTooltip('Abrir contatos'));
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip('Abrir contatos'));
    await tester.pumpAndSettle();
    expect(find.text('Secretaria'), findsOneWidget);
    await tester.tap(find.byTooltip('Voltar'));
    await tester.pumpAndSettle();
    expect(find.text('Seu campus,\nem foco.'), findsOneWidget);
  });
}
