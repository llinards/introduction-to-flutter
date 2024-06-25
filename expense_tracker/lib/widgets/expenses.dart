import 'package:expense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';
import '../models/expense.dart';
import 'expenses_list/expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registerdExpanses = [
    Expense(
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
      category: Category.leisure,
    ),
    Expense(
      title: 'Weekly Groceries',
      amount: 16.53,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: 'Monthly Rent',
      amount: 450.00,
      date: DateTime.now(),
      category: Category.work,
    ),
  ];

  void _openAddExpenseModal() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('💵 My Expenses 💵'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: _openAddExpenseModal,
          ),
        ],
      ),
      body: Column(
        children: [
          // const Text('Chart'),
          Expanded(
            child: ExpensesList(expenses: _registerdExpanses),
          ),
        ],
      ),
    );
  }
}