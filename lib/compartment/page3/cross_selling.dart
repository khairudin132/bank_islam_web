import 'package:bank_islam_web/string/bi_string.dart';
import 'package:bank_islam_web/string/bm_string.dart';
import 'package:bank_islam_web/widget/checkbox_title.dart';
import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:flutter/material.dart';

class CrossSelling extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BmBiPair(
          malayLanguage: jualan_silang,
          engLanguage: cross_selling,
        ),
        SizedBox(height: 6),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CheckBoxTitle(
              malay: 'Ya',
              eng: 'Yes',
            ),
            SizedBox(width: 40),
            CheckBoxTitle(
              malay: 'Tidak',
              eng: 'No',
            ),
          ],
        ),
      ],
    );
  }
}
