import 'dart:math';

import 'package:expense_tracker/widgets/chart/chart.dart';
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
    Expense(
      title: 'Airplane tickets',
      amount: 950.00,
      date: DateTime.now(),
      category: Category.travel,
    ),
  ];

  void _openAddExpenseModal() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (ctx) => NewExpense(_addExpense),
    );
  }

  void _addExpense(Expense expense) {
    setState(() {
      _registerdExpanses.add(expense);
    });
  }

  void _removeExpense(Expense expense) {
    final expenseIndex = _registerdExpanses.indexOf(expense);
    setState(() {
      _registerdExpanses.remove(expense);
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Expense removed'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(() {
              _registerdExpanses.insert(expenseIndex, expense);
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = const Center(
      child: Text('No expenses found.'),
    );

    if (_registerdExpanses.isNotEmpty) {
      mainContent = ExpensesList(
          expenses: _registerdExpanses, onRemoveExpense: _removeExpense);
    }
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
          Chart(expenses: _registerdExpanses),
          // const Text('Chart'),
          Expanded(child: mainContent),
        ],
      ),
    );
  }
}
