import 'package:bank_islam_web/string/bi_string.dart';
import 'package:bank_islam_web/string/bm_string.dart';
import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:flutter/material.dart';

class ApplicantSignature extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BmBiPair(
          malayLanguage: notis_privasi_page3,
          engLanguage: privacy_notice_page3,
        ),
      ],
    );
  }
}
