import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:bank_islam_web/widget/row_form_field.dart';
import 'package:flutter/material.dart';

class TelephoneNoChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BmBiPair(
          malayLanguage: 'No. Telefon',
          engLanguage: 'Telephone No.',
        ),
        SizedBox(height: 10),
        RowFormField(
          padding: EdgeInsets.only(left: 12),
          width: 300,
          malay: 'Rumah',
          eng: 'House',
        ),
        SizedBox(height: 2.5),
        RowFormField(
          padding: EdgeInsets.only(left: 12),
          width: 300,
          malay: 'Pejabat',
          eng: 'Office',
        ),
        SizedBox(height: 2.5),
        RowFormField(
          padding: EdgeInsets.only(left: 12),
          width: 300,
          malay: 'Tel. Bimbit',
          eng: 'Mobile No',
        ),
      ],
    );
  }
}
