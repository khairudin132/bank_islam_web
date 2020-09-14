import 'package:bank_islam_web/string/bi_string.dart';
import 'package:bank_islam_web/string/bm_string.dart';
import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:flutter/material.dart';

class MaturityDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BmBiPair(
          malayLanguage: tarikh_matang_akaun1,
          engLanguage: maturity_date_account1,
        ),
        SizedBox(height: 2.5),
        BmBiPair(
          malayLanguage: tarikh_matang_akaun2,
          engLanguage: maturity_date_account2,
        ),
        // SizedBox(height: 10),
        // SizedBox(height: 10),
      ],
    );
  }
}
