import 'package:bank_islam_web/widget/checkbox_title.dart';
import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:flutter/material.dart';

class BuildDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BmBiPair(
              malayTextBold: true,
              malayLanguage: 'Adakah anda mempunyai akaun dengan Bank Islam',
              engLanguage: 'Do you have an existing account with Bank Islam?',
            ),
            Row(
              children: [
                CheckBoxTitle(
                  malay: 'Ya',
                  eng: 'Yes',
                  malayBold: true,
                  boxBold: true,
                ),
                SizedBox(width: 14),
                CheckBoxTitle(
                  malay: 'Tidak',
                  eng: 'No',
                  malayBold: true,
                  boxBold: true,
                ),
              ],
            ),
          ],
        ),
        BmBiPair(
          malayTextBold: true,
          malayLanguage: 'Jika YA sila kemaskinikan maklumat yang perlu sahaja',
          engLanguage: 'If YES kindly update relevant particulars only',
        ),
      ],
    );
  }
}
