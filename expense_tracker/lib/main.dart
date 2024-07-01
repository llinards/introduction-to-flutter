import 'package:flutter/material.dart';
import 'widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(seedColor: Colors.red);

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
          ),
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
