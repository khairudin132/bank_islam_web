import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bank_islam_web/widget/address.dart';
import 'package:bank_islam_web/widget/checkbox_title.dart';
import 'package:bank_islam_web/widget/col_form_field.dart';
import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:bank_islam_web/widget/row_form_field.dart';

class EmployerMotherEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        EmployerName(),
        SizedBox(height: 10),
        MotherName(),
        SizedBox(height: 10),
        Email(),
      ],
    );
  }
}

class Citizenship extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BmBiPair(
          malayLanguage: '13. Warganegara',
          engLanguage: 'Citizenship',
        ),
        SizedBox(height: 10),
        Container(
          margin: EdgeInsets.only(left: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CheckBoxTitle(malay: 'Malaysia', eng: 'Malaysian'),
              SizedBox(height: 2.5),
              CheckBoxTitle(malay: 'Penduduk Tetap', eng: 'Permanent Resident'),
              SizedBox(height: 2.5),
              CheckBoxTitle(
                  malay: 'Bukan Warganegara (nyatakan)',
                  eng: 'Non-Resident (Specify)'),
            ],
          ),
        ),
        SizedBox(height: 1.5),
        RowFormField(
          malay: 'Negara',
          eng: 'Country',
          padding: EdgeInsets.only(left: 35),
        ),
      ],
    );
  }
}

class Religion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BmBiPair(
              malayLanguage: '14. **Agama',
              engLanguage: 'Religion',
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                        width: 100,
                        child: CheckBoxTitle(malay: 'Islam', eng: 'Islam')),
                    SizedBox(width: 40),
                    CheckBoxTitle(malay: 'Buddha', eng: 'Buddha'),
                  ],
                ),
                SizedBox(height: 2.5),
                Row(
                  children: [
                    Container(
                        width: 100,
                        child: CheckBoxTitle(malay: 'Hindu', eng: 'Hindu')),
                    SizedBox(width: 40),
                    CheckBoxTitle(malay: 'Kristian', eng: 'Christian'),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 2.5),
        Container(
          padding: EdgeInsets.only(left: 11.5),
          child: RowFormField(
            width: 120,
            malay: 'Lain-Lain',
            eng: 'Others',
          ),
        ),
      ],
    );
  }
}

class MailingAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Address(
      addressMalay: '15. Alamat Surat Menyurat',
      addressEng: 'Mailing Address',
      postcodeMalay: 'Poskod',
      postcodeEng: 'Postcode',
      stateMalay: 'Negeri',
      stateEng: 'State',
    );
  }
}

class EducationLevel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BmBiPair(
          malayLanguage: '16. Taraf Pendidikan',
          engLanguage: 'Education Level',
        ),
        SizedBox(height: 10),
        Container(
          margin: EdgeInsets.only(left: 12),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CheckBoxTitle(malay: 'Rendah', eng: 'Primary'),
                  SizedBox(height: 2.5),
                  CheckBoxTitle(malay: 'Diploma', eng: 'Diploma'),
                  SizedBox(height: 2.5),
                  CheckBoxTitle(malay: 'Profesional', eng: 'Professional'),
                ],
              ),
              SizedBox(width: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CheckBoxTitle(malay: 'Menengah', eng: 'Secondary'),
                  SizedBox(height: 2.5),
                  CheckBoxTitle(malay: 'Ijazah', eng: 'Degree'),
                  SizedBox(height: 2.5),
                  CheckBoxTitle(malay: 'PhD', eng: 'PhD'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class EmployerName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ColumnFormField(
      malay: '17. Nama Majikan',
      eng: 'Name of Employer',
      height: 30,
      marginBox: EdgeInsets.only(left: 12),
    );
  }
}

class MotherName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ColumnFormField(
      malay: '18. Nama Ibu',
      eng: 'Mother\'s maiden name',
      height: 30,
      marginBox: EdgeInsets.only(left: 12),
    );
  }
}

class Email extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ColumnFormField(
      malay: '19. Alamat e-mel',
      eng: 'E-mail address',
      height: 30,
      marginBox: EdgeInsets.only(left: 12),
    );
  }
}
