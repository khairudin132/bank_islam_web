import 'package:bank_islam_web/compartment/page1/description_top_table.dart';
import 'package:bank_islam_web/compartment/page1/main_table_page1.dart';
import 'package:bank_islam_web/compartment/page1/pemberitahuan_notification.dart';
import 'package:bank_islam_web/compartment/page1/upper_left_table.dart';
import 'package:bank_islam_web/compartment/page1/upper_right_table.dart';
import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:flutter/material.dart';

const Color lightBlue = Color(0xffC7D9F1);

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            UpperLeftTable(),
            Expanded(child: SizedBox(width: 40)),
            UpperRightTable(),
          ],
        ),
        SizedBox(height: 10),
        BuildDescription(),
        SizedBox(height: 10),
        Center(
          child: BmBiPair(
            malayTextBold: true,
            malayLanguage: 'SILA ISIKAN BORANG DENGAN MENGGUNAKAN HURUF BESAR',
            engLanguage: 'PLEASE FILL IN THE FORM IN CAPITAL LETTERS',
          ),
        ),
        BuildTablePage1(),
        Container(
          padding: EdgeInsets.only(left: 35),
          child: Row(
            children: [
              BmBiPair(
                malayLanguage: '** Data sensitif',
                engLanguage: 'Sensitive data',
              ),
              Expanded(flex: 1, child: SizedBox(width: 1)),
              BmBiPair(
                malayLanguage: '* Bidang tidak wajib',
                engLanguage: 'Non-mandatory field',
              ),
              Expanded(flex: 4, child: SizedBox(width: 1)),
              Text(
                'V1/TDT-EFS',
                style: TextStyle(fontSize: 11, color: Colors.black),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        NotificationDescription(),
      ],
    );
  }
}
