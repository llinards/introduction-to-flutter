import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid = Uuid();

final formatter = DateFormat.yMMMd();

enum Category {
  food,
  travel,
  leisure,
  work,
}

const categoryIcons = {
  Category.food: '🍔',
  Category.travel: '✈️',
  Category.leisure: '🎉',
  Category.work: '💼',
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate => formatter.format(date);
}
