import 'package:bank_islam_web/widget/center_divider.dart';
import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:bank_islam_web/widget/row_form_field.dart';
import 'package:flutter/material.dart';

class MaklumanPengenalanBukanWargaPenjaga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        BmBiPair(
          malayLanguage:
              '3. Maklumat Pengenalan bagi Bukan Warganegara (Jika Berkenaan)',
          engLanguage: 'Identification Details for Non-Citizen (If Applicable)',
        ),
        SizedBox(height: 10),
        CenterDivider(
          paddingChild1: EdgeInsets.only(left: 12),
          child1: RowFormField(
            width: 200,
            malay: 'No. Pasport',
            eng: 'Passport No.',
          ),
          child2: RowFormField(
            width: 200,
            malay: 'Tarikh Dikeluarkan',
            eng: 'Date of Issue',
          ),
        ),
        SizedBox(height: 2.5),
        CenterDivider(
          paddingChild1: EdgeInsets.only(left: 12),
          child1: RowFormField(
            width: 200,
            malay: 'Tempat Dikeluarkan',
            eng: 'Place of Issue',
          ),
          child2: RowFormField(
            width: 200,
            malay: 'Tarikh Tamat',
            eng: 'Expiry Date',
          ),
        ),
      ],
    );
  }
}
