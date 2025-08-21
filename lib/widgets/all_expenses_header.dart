import 'package:flutter/material.dart';
import 'package:responsive_adaptive_design/widgets/custom_header.dart';

class AllExpensesHeader extends StatefulWidget {
  const AllExpensesHeader({super.key});

  @override
  State<AllExpensesHeader> createState() => _AllExpensesHeaderState();
}

class _AllExpensesHeaderState extends State<AllExpensesHeader> {
  @override
  Widget build(BuildContext context) {
    return CustomHeader(title: "All Expenses");
  }
}
