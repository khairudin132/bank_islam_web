import 'package:bank_islam_web/widget/center_divider.dart';
import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:bank_islam_web/widget/row_form_field.dart';
import 'package:flutter/material.dart';

class KadPengenalanPenjaga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        BmBiPair(
          malayLanguage: '2. No. Kad Pengenalan',
          engLanguage: 'Identity Card No.',
        ),
        SizedBox(height: 10),
        CenterDivider(
          paddingChild1: EdgeInsets.only(left: 12),
          child1: RowFormField(
            width: 120,
            malay: 'Baharu',
            eng: 'New',
          ),
          child2: RowFormField(
            width: 200,
            malay: 'Tarikh Lahir',
            eng: 'Date of Birth',
          ),
        ),
        SizedBox(height: 2.5),
        CenterDivider(
          paddingChild1: EdgeInsets.only(left: 12),
          child1: RowFormField(
            width: 120,
            malay: 'Lain-Lain',
            eng: 'Others',
          ),
          child2: RowFormField(
            width: 200,
            malay: 'Tempat Lahir',
            eng: 'Place of Birth',
          ),
        ),
      ],
    );
  }
}
