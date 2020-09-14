import 'package:bank_islam_web/widget/address.dart';
import 'package:bank_islam_web/widget/checkbox_title.dart';
import 'package:bank_islam_web/widget/col_form_field.dart';
import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:bank_islam_web/widget/row_form_field.dart';
import 'package:flutter/material.dart';

class LeftColumnPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        gender(),
        SizedBox(height: 10),
        race(),
        SizedBox(height: 10),
        bumiputera(),
        SizedBox(height: 10),
        maritalStatus(),
        SizedBox(height: 10),
        permanentAddress(),
        SizedBox(height: 10),
        telephoneNo(),
        SizedBox(height: 10),
        preferredLanguage(),
        SizedBox(height: 10),
        occupation(),
        SizedBox(height: 10),
        occupationSector(),
      ],
    );
  }

  Widget gender() {
    return Row(
      children: [
        BmBiPair(
          malayLanguage: '4. Jantina',
          engLanguage: 'Gender',
        ),
        SizedBox(width: 20),
        Row(
          children: [
            CheckBoxTitle(malay: 'Lelaki', eng: 'Male'),
            CheckBoxTitle(malay: 'Perempuan', eng: 'Female'),
          ],
        ),
      ],
    );
  }

  Widget race() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BmBiPair(
              malayLanguage: '5. **Bangsa',
              engLanguage: 'Race',
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CheckBoxTitle(malay: 'Melayu', eng: 'Malay'),
                    SizedBox(width: 40),
                    CheckBoxTitle(malay: 'Cina', eng: 'Chinese'),
                  ],
                ),
                SizedBox(height: 2.5),
                Row(
                  children: [
                    CheckBoxTitle(malay: 'India', eng: 'Indian'),
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
            padding: EdgeInsets.only(right: 12),
            width: 120,
            malay: 'Lain-Lain',
            eng: 'Others',
          ),
        ),
      ],
    );
  }

  Widget bumiputera() {
    return Row(
      children: [
        BmBiPair(
          malayLanguage: '6. Bumiputera',
          engLanguage: '',
        ),
        SizedBox(width: 20),
        Row(
          children: [
            CheckBoxTitle(
              malay: 'Ya',
              eng: 'Yes',
            ),
            CheckBoxTitle(
              malay: 'Tidak',
              eng: 'No',
            ),
          ],
        ),
      ],
    );
  }

  Widget maritalStatus() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BmBiPair(
          malayLanguage: '7. Status Perkahwinan',
          engLanguage: 'Marital Status',
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CheckBoxTitle(malay: 'Berkahwin', eng: 'Married'),
            SizedBox(height: 2.5),
            CheckBoxTitle(malay: 'Bujang', eng: 'Single'),
            SizedBox(height: 2.5),
            CheckBoxTitle(malay: 'Lain-Lain', eng: 'Others'),
          ],
        ),
      ],
    );
  }

  Widget permanentAddress() {
    return Address(
      addressMalay: '8. Alamat Rumah Tetap',
      addressEng: 'Permanent Home Address',
      postcodeMalay: 'Poskod',
      postcodeEng: 'Postcode',
      stateMalay: 'Negeri',
      stateEng: 'State',
    );
  }

  Widget telephoneNo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BmBiPair(
          malayLanguage: '9. No. Telefon',
          engLanguage: 'Telephone No.',
        ),
        SizedBox(height: 10),
        RowFormField(
          padding: EdgeInsets.only(left: 12),
          width: 140,
          malay: 'Rumah',
          eng: 'House',
        ),
        SizedBox(height: 2.5),
        RowFormField(
          padding: EdgeInsets.only(left: 12),
          width: 140,
          malay: 'Pejabat',
          eng: 'Office',
        ),
        SizedBox(height: 2.5),
        RowFormField(
          padding: EdgeInsets.only(left: 12),
          width: 140,
          malay: 'Tel. Bimbit',
          eng: 'Mobile No',
        ),
      ],
    );
  }

  Widget preferredLanguage() {
    return ColumnFormField(
      malay: '10. *Bahasa Pilihan',
      eng: 'Preferred Language',
      height: 30,
      marginBox: EdgeInsets.only(left: 12),
    );
  }

  Widget occupation() {
    return ColumnFormField(
      malay: '11. Pekerjaan',
      eng: 'Occupation',
      height: 30,
      marginBox: EdgeInsets.only(left: 12),
    );
  }

  Widget occupationSector() {
    return ColumnFormField(
      malay: '12. Sektor Pekerjaan',
      eng: 'Occupation Sector',
      height: 30,
      marginBox: EdgeInsets.only(left: 12),
    );
  }
}
