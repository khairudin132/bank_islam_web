import 'package:bank_islam_web/compartment/page3/applicant_signature.dart';
import 'package:bank_islam_web/compartment/page3/cross_selling.dart';
import 'package:bank_islam_web/compartment/page3/fatca_declaration.dart';
import 'package:bank_islam_web/compartment/page3/pidm_clause.dart';
import 'package:bank_islam_web/compartment/page3/privacy_notice_clause.dart';
import 'package:bank_islam_web/compartment/page3/tax_residency_declaration.dart';
import 'package:bank_islam_web/string/bi_string.dart';
import 'package:bank_islam_web/string/bm_string.dart';
import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:flutter/material.dart';

const Color blue = Color(0xff8DB3E2);
const Color lightBlue = Color(0xffC7D9F1);
const Color lightGrey = Color(0xffBFB595);

class Page3 extends StatelessWidget {
  double iconSize = 40;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1704,
      child: Table(
        border: TableBorder.all(
          width: 3,
          style: BorderStyle.solid,
        ),
        children: [
          TableRow(children: [
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 1),
                  child: Column(
                    children: [
                      SizedBox(height: 2),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text('9.',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black)),
                          ),
                          SizedBox(width: 4),
                          Flexible(
                            child: Container(
                              padding: EdgeInsets.only(top: 2),
                              child: BmBiPair(
                                malayLanguage: pengakuan9,
                                engLanguage: declaration9,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
          TableRow(children: [
            TitleTable(
              malayLanguage: 'DEKLARASI FATCA',
              engLanguage: 'FATCA DECLARATION',
            ),
          ]),
          TableRow(children: [
            Container(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: FatcaDeclaration(),
              ),
            ),
          ]),
          //cara deposit
          TableRow(children: [
            TitleTable(
              malayLanguage: 'DEKLARASI CUKAI BERMASTAUTIN',
              engLanguage: 'TAX RESIDENCY DECLARATION',
            ),
          ]),
          TableRow(children: [
            Container(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: TaxResidencyDeclaration(),
              ),
            ),
          ]),
          //tarikh matang akaun deposit
          TableRow(children: [
            TitleTable(
              malayLanguage: 'PERSETUJUAN JUALAN SILANG',
              engLanguage: 'CONSENT FOR CROSS SELLING',
            ),
          ]),
          TableRow(children: [
            Container(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: CrossSelling(),
              ),
            ),
          ]),
          TableRow(children: [
            TitleTable(
              malayLanguage: 'KLAUSA PIDM ',
              engLanguage: ' PIDM CLAUSE',
            ),
          ]),
          TableRow(children: [
            Container(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: PIDMClause(),
              ),
            ),
          ]),
          TableRow(children: [
            TitleTable(
              malayLanguage: 'KLAUSA NOTIS PRIVASI',
              engLanguage: 'PRIVACY NOTICE CLAUSE',
            ),
          ]),
          TableRow(children: [
            Container(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: PrivacyNoticeClause(),
              ),
            ),
          ]),
          TableRow(children: [
            TitleTable(
              malayLanguage: 'TANDATANGAN PEMOHON ',
              engLanguage: 'APPLICANT SIGNATURE',
            ),
          ]),
          TableRow(children: [
            Container(
              height: 70,
              child: Padding(
                padding: EdgeInsets.only(bottom: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    BmBiPair(
                      malayLanguage: 'Tandatangan Pemohon & Tarikh',
                      engLanguage: 'Applicant Signature & Date',
                    ),
                  ],
                ),
              ),
            ),
          ]),
          TableRow(children: [
            Container(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: ApplicantSignature(),
              ),
            ),
          ]),
          TableRow(children: [
            TitleTable(
              malayLanguage: 'UNTUK KEGUNAAN BANK SAHAJA',
              engLanguage: 'FOR BANK USE ONLY',
            ),
          ]),
          TableRow(children: [
            Container(
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 80,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: Colors.black,
                            width: 2.5,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 50),
                          BmBiPair(
                            malayLanguage: dikendalikan_kegunaan_bank,
                            engLanguage: attended_bank_use,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: 80,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: Colors.black,
                            width: 2.5,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 50),
                          BmBiPair(
                            align: true,
                            malayLanguage: disemak_kegunaan_bank,
                            engLanguage: checked_bank_use,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 80,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 50),
                          BmBiPair(
                            malayLanguage: catatan_kegunaan_bank,
                            engLanguage: remark_bank_use,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
