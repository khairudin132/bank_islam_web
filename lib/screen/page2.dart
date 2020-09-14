import 'package:bank_islam_web/string/bi_string.dart';
import 'package:bank_islam_web/string/bm_string.dart';

import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:bank_islam_web/widget/number_list.dart';
import 'package:bank_islam_web/widget/row_form_field.dart';
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

// class FullNamePage2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         BmBiPair(
//           malayLanguage: 'Nama Penuh',
//           engLanguage: 'Full Name',
//         ),
//         SizedBox(width: 10),
//         Expanded(
//           child: Container(
//             height: 50,
//             decoration: BoxDecoration(
//               border: Border.all(
//                   color: Colors.black87, width: 1.2, style: BorderStyle.solid),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

class FullNamePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BmBiPair(
          malayLanguage: 'Nama Penuh',
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

// class NoTelefon extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         BmBiPair(
//           malayLanguage: 'No. Telefon',
//           engLanguage: 'Telephone No.',
//         ),
//         SizedBox(height: 10),
//         Row(
//           children: [
//             SizedBox(width: 10),
//             Expanded(
//               flex: 3,
//               child: Table(
//                 children: [
//                   TableRow(children: [
//                     Container(
//                       height: 25,
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           BmBiPair(
//                             malayLanguage: 'Rumah',
//                             engLanguage: 'House',
//                           ),
//                         ],
//                       ),
//                     ),
//                   ]),
//                   TableRow(children: [
//                     Container(
//                       height: 25,
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           BmBiPair(
//                             malayLanguage: 'Pejabat',
//                             engLanguage: 'Office',
//                           ),
//                         ],
//                       ),
//                     ),
//                   ]),
//                   TableRow(children: [
//                     Container(
//                       height: 25,
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           BmBiPair(
//                             malayLanguage: 'Tel. Bimbit',
//                             engLanguage: 'Mobile No.',
//                           ),
//                         ],
//                       ),
//                     ),
//                   ]),
//                 ],
//               ),
//             ),
//             SizedBox(width: 10),
//             Expanded(
//               flex: 5,
//               child: Table(
//                 border: TableBorder.all(
//                   width: 1.2,
//                   color: Colors.black87,
//                   style: BorderStyle.solid,
//                 ),
//                 children: [
//                   TableRow(children: [
//                     Container(height: 25),
//                   ]),
//                   TableRow(children: [
//                     Container(height: 25),
//                   ]),
//                   TableRow(children: [
//                     Container(height: 25),
//                   ]),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

class DepositDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // SizedBox(height: 10),
        BmBiPair(
          malayLanguage: cara_deposit,
          engLanguage: mode_of_deposit,
        ),
        SizedBox(height: 14),
        Table(
          border: TableBorder.all(
            width: 1.2,
            color: Colors.black87,
            style: BorderStyle.solid,
          ),
          children: [
            TableRow(children: [
              Container(
                height: 30,
                color: lightGrey,
                child: Center(
                  child: BmBiPair(
                    malayLanguage: 'Jumlah Deposit (RM)',
                    engLanguage: 'Deposit Amount (RM)',
                  ),
                ),
              ),
              Container(
                height: 30,
                color: lightGrey,
                child: Center(
                  child: BmBiPair(
                    malayLanguage: 'Tempoh (Bulan/Tahun)',
                    engLanguage: 'Tenure (Month/Year)',
                  ),
                ),
              ),
            ]),
            TableRow(children: [
              Container(
                height: 30,
                child: Center(child: Text('1,000')),
              ),
              Container(
                height: 30,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BmBiPair(
                        malayLanguage: '216 (bulan',
                        engLanguage: 'months) ',
                      ),
                      Text(' / '),
                      BmBiPair(
                        malayLanguage: ' 18 (tahun',
                        engLanguage: 'years)',
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ],
        ),
        // SizedBox(height: 10),
      ],
    );
  }
}

class MaturityDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BmBiPair(
          malayLanguage: tarikh_matang_akaun1,
          engLanguage: maturity_date_account1,
        ),
        SizedBox(height: 2.5),
        BmBiPair(
          malayLanguage: tarikh_matang_akaun2,
          engLanguage: maturity_date_account2,
        ),
        // SizedBox(height: 10),
        // SizedBox(height: 10),
      ],
    );
  }
}

class WakalahAkad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BmBiPair(
          malayLanguage: akad_wakalah,
          engLanguage: wakalah_akad,
        ),
        SizedBox(height: 50),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 500,
              child: Divider(
                color: Colors.black,
                height: 1,
                thickness: 1,
              ),
            ),
            BmBiPair(
              malayLanguage: tandatangan_pelanggan,
              engLanguage: customer_signature,
            ),
          ],
        ),
        SizedBox(height: 20),
        BmBiPair(
          malayLanguage: menerima_pelantikan,
          engLanguage: accept_appointment,
        ),
        SizedBox(height: 50),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 500,
              child: Divider(
                color: Colors.black,
                height: 1,
                thickness: 1,
              ),
            ),
            BmBiPair(
              malayLanguage: ditandatangani,
              engLanguage: signed_for,
            ),
          ],
        ),
        // SizedBox(height: 10),
        // SizedBox(height: 10),
      ],
    );
  }
}

class Declaration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BmBiPair(
          malayLanguage: dengan_ini,
          engLanguage: hereby,
        ),
        SizedBox(height: 2.5),
        BuildNumberList(
          noIteration: 8,
          numberBmSentences: list_pengakuan,
          numberBiSentences: list_declaration,
        )
        // SizedBox(height: 10),
        // SizedBox(height: 10),
      ],
    );
  }
}
