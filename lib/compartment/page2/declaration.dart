import 'package:bank_islam_web/string/bi_string.dart';
import 'package:bank_islam_web/string/bm_string.dart';
import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:bank_islam_web/widget/number_list.dart';
import 'package:flutter/material.dart';

class Declaration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BmBiPair(
          malayLanguage: dengan_ini,
          engLanguage: hereby,
        ),
        SizedBox(height: 2.5),
        BuildNumberList(
          noIteration: 8,
          numberBmSentences: list_pengakuan,
          numberBiSentences: list_declaration,
        )
        // SizedBox(height: 10),
        // SizedBox(height: 10),
      ],
    );
  }
}
