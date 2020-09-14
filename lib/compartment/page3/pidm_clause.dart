import 'package:bank_islam_web/string/bi_string.dart';
import 'package:bank_islam_web/string/bm_string.dart';
import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:flutter/material.dart';

class PIDMClause extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BmBiPair(
          malayLanguage: dilindungi_PIDM,
          engLanguage: PIDM_protection,
        ),
        SizedBox(height: 2.5),
        BmBiPair(
          malayLanguage: risalah_PIDM,
          engLanguage: PIDM_brochure,
        ),
      ],
    );
  }
}
