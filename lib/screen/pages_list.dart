//Better way than form.dart

import 'package:bank_islam_web/screen/page1.dart';
import 'package:bank_islam_web/screen/page2.dart';
import 'package:bank_islam_web/screen/page3.dart';
import 'package:bank_islam_web/screen/page4.dart';
import 'package:bank_islam_web/screen/page5.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: 1240,
        child: ListView(
          children: [
            buildFormPage(Page1()),
            SizedBox(height: 20),
            buildFormPage(Page2()),
            SizedBox(height: 20),
            buildFormPage(Page3()),
            SizedBox(height: 20),
            buildFormPage(Page4()),
            SizedBox(height: 20),
            buildFormPage(Page5()),
          ],
        ),
      ),
    ));
  }

  Widget buildFormPage(Widget page) {
    return Container(
      height: 1844,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            offset: Offset(0.0, 1.0),
            blurRadius: 4.0,
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 150),
      child: page,
    );
  }
}
