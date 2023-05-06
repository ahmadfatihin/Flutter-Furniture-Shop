import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_storage/get_storage.dart';

class FavoriteNotifier extends StateNotifier<Set<String>> {
  FavoriteNotifier(Set<String> favorites) : super(favorites);

  void toggleFavorite(String title) {
    final favorites = state;
    if (favorites.contains(title)) {
      favorites.remove(title);
    } else {
      favorites.add(title);
    }
    state = Set<String>.from(favorites);
    final box = GetStorage();
    box.write('favorites', state.toList());
  }

  bool isFavorite(String title) {
    return state.contains(title);
  }
}

final favoriteProvider =
    StateNotifierProvider<FavoriteNotifier, Set<String>>((ref) {
  final box = GetStorage();
  Set<String> savedFavorites = {};

  try {
    savedFavorites = Set<String>.from(box.read('favorites') ?? []);
  } catch (e) {
    log('Error reading favorites from GetStorage: $e' );
  }

  return FavoriteNotifier(savedFavorites);
});
