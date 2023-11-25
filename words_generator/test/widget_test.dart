import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:words_generator/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('Teste de integração 1', () {
    testWidgets('Gere 5 palavras diferentes e remove elas na pagina favorite',
        (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Gere 5 palavras pressionando "Next"
      for (var i = 0; i < 5; i++) {
        await tester.tap(find.text('Like'));
        await tester.tap(find.text('Next'));
        await Future.delayed(const Duration(seconds: 1));
        print('Palavra gerada e marcada ${i + 1}');
      }

      // Pressione o botão "Favorites"
      await tester.tap(find.text('Favorites'));
      await tester.pumpAndSettle();
      print('Botão "Favorites" pressionado');

      // Clique nos ícones de lixo
      for (var i = 0; i < 5; i++) {
        await tester.tap(find.byIcon(Icons.delete_outline).first);
        print('Ícone de lixo ${i + 1} pressionado');
      }

      print('Teste concluído com sucesso!');
    });
  });
}
