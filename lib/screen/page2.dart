import 'package:bank_islam_web/compartment/page2/child_ic.dart';
import 'package:bank_islam_web/compartment/page2/declaration.dart';
import 'package:bank_islam_web/compartment/page2/deposit_description.dart';
import 'package:bank_islam_web/compartment/page2/full_name_page2.dart';
import 'package:bank_islam_web/compartment/page2/maturity_date.dart';
import 'package:bank_islam_web/compartment/page2/telephone_no_child.dart';
import 'package:bank_islam_web/compartment/page2/wakalah_akad.dart';

import 'package:bank_islam_web/widget/language_pair.dart';

import 'package:flutter/material.dart';

const Color blue = Color(0xff8DB3E2);
const Color lightBlue = Color(0xffC7D9F1);
const Color lightGrey = Color(0xffBFB595);

class Page2 extends StatelessWidget {
  double iconSize = 40;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Table(
        border: TableBorder.all(
          width: 3,
          style: BorderStyle.solid,
        ),
        children: [
          //maklumat anak
          TableRow(children: [
            TitleTable(
              malayLanguage: 'MAKLUMAT ANAK (AMANAH)',
              engLanguage: 'CHILD PARTICULARS (TRUST)',
            ),
          ]),
          TableRow(children: [
            Container(
              color: lightBlue,
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FullNamePage2(),
                    SizedBox(height: 10),
                    KadPengenalanAnak(),
                    SizedBox(height: 10),
                    TelephoneNoChild(),
                  ],
                ),
              ),
            ),
          ]),
          //cara deposit
          TableRow(children: [
            TitleTable(
              malayLanguage: 'CARA DEPOSIT',
              engLanguage: 'MODE OF DEPOSIT',
            ),
          ]),
          TableRow(children: [
            Container(
              color: lightBlue,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 18),
                child: DepositDescription(),
              ),
            ),
          ]),
          //tarikh matang akaun deposit
          TableRow(children: [
            TitleTable(
              malayLanguage:
                  'PADA TARIKH MATANG AKAUN DEPOSIT BERTEMPOH-i (TAWARRUQ)',
              engLanguage:
                  'ON MATURITY DATE OF TERM DEPOSIT-i (TAWARRUQ) ACCOUNT',
            ),
          ]),
          TableRow(children: [
            Container(
              color: lightBlue,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                child: MaturityDate(),
              ),
            ),
          ]),
          TableRow(children: [
            TitleTable(
              malayLanguage: 'AKAD WAKALAH',
              engLanguage: 'WAKALAH AKAD',
            ),
          ]),
          TableRow(children: [
            Container(
              color: lightBlue,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                child: WakalahAkad(),
              ),
            ),
          ]),
          TableRow(children: [
            TitleTable(
              malayLanguage: 'PENGAKUAN',
              engLanguage: ' DECLARATION',
            ),
          ]),
          TableRow(children: [
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                child: Declaration(),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
