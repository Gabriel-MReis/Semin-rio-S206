import 'package:flutter_test/flutter_test.dart';
import 'package:words_generator/main.dart';

void main() {
  group('MyAppState Tests', () {
    test('Initial state', () {
      final myAppState = MyAppState();

      // Ensure the initial state is correct
      expect(myAppState.current, isNotNull);
      expect(myAppState.favorites, isEmpty);
    });

    test('Toggle favorite', () {
      final myAppState = MyAppState();
      final initialPair = myAppState.current;

      // Toggle the favorite status
      myAppState.toggleFavorite();

      // Ensure the favorite status is toggled
      expect(myAppState.favorites.length, 1);
      expect(myAppState.favorites.contains(initialPair), true);

      // Toggle again to remove from favorites
      myAppState.toggleFavorite();

      // Ensure the pair is removed from favorites
      expect(myAppState.favorites, isEmpty);
    });

    test('Remove favorite', () {
      final myAppState = MyAppState();
      final initialPair = myAppState.current;

      // Toggle the favorite status
      myAppState.toggleFavorite();

      // Remove the favorite
      myAppState.removeFavorite(initialPair);

      // Ensure the pair is removed from favorites
      expect(myAppState.favorites, isEmpty);
    });

    test('Get next pair', () {
      final myAppState = MyAppState();
      final initialPair = myAppState.current;

      // Get the next pair
      myAppState.getNext();

      // Ensure the current pair is changed
      expect(myAppState.current, isNot(equals(initialPair)));
    });
  });
}
