import 'package:flutter/material.dart';

class CenterDivider extends StatelessWidget {
  final Widget child1;
  final EdgeInsetsGeometry paddingChild1;
  final Widget child2;

  const CenterDivider({this.child1, this.child2, this.paddingChild1});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            padding: paddingChild1,
            child: child1,
          ),
        ),
        Container(
          width: 20,
        ),
        Expanded(
          child: Container(
            child: child2,
          ),
        ),
      ],
    );
  }
}
