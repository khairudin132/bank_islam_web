import 'package:bank_islam_web/compartment/page1/main_table_page1.dart';
import 'package:bank_islam_web/string/bi_string.dart';
import 'package:bank_islam_web/string/bm_string.dart';
import 'package:bank_islam_web/widget/center_divider.dart';
import 'package:bank_islam_web/widget/checkbox_title.dart';
import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:bank_islam_web/widget/row_form_field.dart';
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

class UpperLeftTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              'images/bank_islam(2).png',
              width: 100,
              height: 40,
              fit: BoxFit.fill,
            ),
            SizedBox(width: 25),
            Image.asset(
              'images/perbankan_islam.png',
              width: 40,
              height: 40,
              fit: BoxFit.fill,
            ),
          ],
        ),
        SizedBox(height: 30),
        Row(
          children: [
            SizedBox(width: 10),
            Text(
              'BANK ISLAM MALAYSIA BERHAD (NO. 98127-X)',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ],
        ),
        Container(
            width: 350,
            child: Table(
                columnWidths: {
                  0: FractionColumnWidth(0.2),
                  1: FractionColumnWidth(.3),
                },
                border: TableBorder.all(
                  width: 2.5,
                  style: BorderStyle.solid,
                ),
                children: [
                  TableRow(children: [
                    Container(
                      color: lightBlue,
                      height: 35,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TitleRow(
                            malayLanguage: 'Cawangan',
                            engLanguage: 'Branch',
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 35,
                    )
                  ]),
                ])),
      ],
    );
  }
}

class UpperRightTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          child: Text(
            'CIF1',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ),
        Container(
          width: 490,
          child: Column(
            children: [
              Container(
                width: 490,
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      color: Colors.black,
                      width: 2.5,
                      style: BorderStyle.solid,
                    ),
                    top: BorderSide(
                      color: Colors.black,
                      width: 2.5,
                      style: BorderStyle.solid,
                    ),
                    right: BorderSide(
                      color: Colors.black,
                      width: 2.5,
                      style: BorderStyle.solid,
                    ),
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 2.5,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                child: TitleTable(
                  malayLanguage: 'UNTUK KEGUNAAN BANK SAHAJA',
                  engLanguage: 'FOR BANK USE ONLY',
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 200,
                    height: 35,
                    decoration: BoxDecoration(
                      color: lightBlue,
                      border: Border(
                        left: BorderSide(
                          color: Colors.black,
                          width: 2.5,
                          style: BorderStyle.solid,
                        ),
                        right: BorderSide(
                          color: Colors.black,
                          width: 2.5,
                          style: BorderStyle.solid,
                        ),
                        bottom: BorderSide(
                          color: Colors.black,
                          width: 2.5,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TitleRow(
                          malayLanguage: 'NO. AKAUN',
                          engLanguage: 'ACCOUNT NO.',
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: Colors.black,
                            width: 2.5,
                            style: BorderStyle.solid,
                          ),
                          bottom: BorderSide(
                            color: Colors.black,
                            width: 2.5,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 200,
                    height: 35,
                    decoration: BoxDecoration(
                      color: lightBlue,
                      border: Border(
                        left: BorderSide(
                          color: Colors.black,
                          width: 2.5,
                          style: BorderStyle.solid,
                        ),
                        right: BorderSide(
                          color: Colors.black,
                          width: 2.5,
                          style: BorderStyle.solid,
                        ),
                        bottom: BorderSide(
                          color: Colors.black,
                          width: 2.5,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TitleRow(
                          malayLanguage: 'NO. CIF',
                          engLanguage: 'CIF NO.',
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: Colors.black,
                            width: 2.5,
                            style: BorderStyle.solid,
                          ),
                          bottom: BorderSide(
                            color: Colors.black,
                            width: 2.5,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Row(
              //   children: [
              //     Container(
              //       color: lightBlue,
              //       height: 46,
              //       width: 250,
              //       decoration: BoxDecoration(
              //         border: Border(
              //           left: BorderSide(
              //             color: Colors.black,
              //             width: 2.5,
              //             style: BorderStyle.solid,
              //           ),
              //           right: BorderSide(
              //             color: Colors.black,
              //             width: 2.5,
              //             style: BorderStyle.solid,
              //           ),
              //           bottom: BorderSide(
              //             color: Colors.black,
              //             width: 2.5,
              //             style: BorderStyle.solid,
              //           ),
              //         ),
              //       ),
              //       child: TitleRow(
              //         malayLanguage: 'NO. AKAUN',
              //         engLanguage: 'ACCOUNT NO.',
              //       ),
              //     ),
              //     Container(
              //       color: lightBlue,
              //       height: 46,
              //       decoration: BoxDecoration(
              //         border: Border(
              //           right: BorderSide(
              //             color: Colors.black,
              //             width: 2.5,
              //             style: BorderStyle.solid,
              //           ),
              //           bottom: BorderSide(
              //             color: Colors.black,
              //             width: 2.5,
              //             style: BorderStyle.solid,
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ],
    );
  }
}

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

class GelaranTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BmBiPair(
          malayLanguage: 'Gelaran',
          engLanguage: 'Title',
        ),
        SizedBox(width: 20),
        Expanded(
          child: Row(
            children: [
              CheckBoxTitle(malay: 'Tuan', eng: 'Sir'),
              Expanded(flex: 1, child: SizedBox(width: 1)),
              CheckBoxTitle(malay: 'Puan', eng: 'Mrs'),
              Expanded(flex: 1, child: SizedBox(width: 1)),
              CheckBoxTitle(malay: 'Encik', eng: 'Mr'),
              Expanded(flex: 1, child: SizedBox(width: 1)),
              CheckBoxTitle(malay: 'Cik', eng: 'Miss'),
              Expanded(flex: 1, child: SizedBox(width: 1)),
              CheckBoxTitle(
                  malay: 'Lain-lain(nyatakan)', eng: 'Others(specify)'),
              SizedBox(width: 5),
              Expanded(
                flex: 10,
                child: Container(
                  width: 3,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: Colors.black,
                        width: 1.2,
                        style: BorderStyle.solid),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class FullNamePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BmBiPair(
          malayLanguage: '1. Nama Penuh',
          engLanguage: 'Full Name',
        ),
        SizedBox(width: 10),
        Expanded(
          child: Container(
            height: 45,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                  color: Colors.black87, width: 1.2, style: BorderStyle.solid),
            ),
          ),
        ),
      ],
    );
  }
}

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

class NotificationDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
              text: 'PEMBERITAHUAN /',
              style: TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: ' NOTIFICATION',
                  style: TextStyle(fontSize: 9, fontStyle: FontStyle.italic),
                ),
              ]),
        ),
        SizedBox(height: 2.5),
        BmBiPair(
          malayLanguage: pemberitahuan,
          engLanguage: notification,
        ),
      ],
    );
  }
}
