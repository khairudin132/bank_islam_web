import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:bank_islam_web/widget/row_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ParticularsContactPerson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: BmBiPair(
                malayLanguage: '21. Butiran pihak yang dihubungi ',
                engLanguage: 'Particulars of contact person',
              ),
            ),
            SizedBox(width: 25),
            Expanded(
              child: RowFormField(
                malay: 'Nama',
                eng: 'Name',
              ),
            ),
          ],
        ),
        SizedBox(height: 2.5),
        Row(
          children: [
            Expanded(
              child: RowFormField(
                padding: EdgeInsets.only(left: 21),
                malay: 'No.Telefon',
                eng: 'Telephone No.',
              ),
            ),
            SizedBox(width: 25),
            Expanded(
              child: RowFormField(
                malay: 'Hubungan',
                eng: 'Relationship',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
