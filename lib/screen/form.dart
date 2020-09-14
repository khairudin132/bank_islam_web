//Alternative to the pages_list.dart

import 'package:bank_islam_web/screen/page1.dart';
import 'package:bank_islam_web/screen/page2.dart';
import 'package:flutter/material.dart';

class FormDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(children: [
              Page1(),
              Table(
                children: const <TableRow>[
                  TableRow(
                    children: <Widget>[
                      Text('AAAAAA'),
                      Text('B'),
                      Text('C'),
                    ],
                  ),
                ],
              ),
              Page2(),
            ]),
          ),
        ),
      ),
    ));
  }
}
