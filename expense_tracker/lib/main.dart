import 'package:flutter/material.dart';
import 'widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(seedColor: Colors.orange);

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.primaryContainer,
          foregroundColor: kColorScheme.onPrimaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: const TextStyle().copyWith(
                color: kColorScheme.onSecondaryContainer,
                fontWeight: FontWeight.bold,
              ),
              titleMedium: const TextStyle().copyWith(
                color: kColorScheme.onSecondaryContainer,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      home: const Expenses(),
    ),
  );
}
