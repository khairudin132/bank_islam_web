import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:flutter/material.dart';

class FullNamePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BmBiPair(
          malayLanguage: '1. Nama Penuh',
          engLanguage: 'Full Name',
        ),
        SizedBox(width: 10),
        Expanded(
          child: Container(
            height: 45,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                  color: Colors.black87, width: 1.2, style: BorderStyle.solid),
            ),
          ),
        ),
      ],
    );
  }
}
