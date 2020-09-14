import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:bank_islam_web/widget/row_form_field.dart';
import 'package:flutter/material.dart';

class KadPengenalanAnak extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        BmBiPair(
          malayLanguage: 'No. Kad Pengenalan',
          engLanguage: 'Identity Card No.',
        ),
        SizedBox(height: 10),
        RowFormField(
          padding: EdgeInsets.only(left: 12),
          width: 300,
          malay: 'Baharu',
          eng: 'New',
        ),
        SizedBox(height: 2.5),
        RowFormField(
          padding: EdgeInsets.only(left: 12),
          width: 300,
          malay: 'Lain-Lain',
          eng: 'Others',
        ),
      ],
    );
  }
}
