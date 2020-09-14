import 'package:bank_islam_web/string/bi_string.dart';
import 'package:bank_islam_web/string/bm_string.dart';

import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FatcaDeclaration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Table(
        columnWidths: {
          0: FractionColumnWidth(0.6),
          1: FractionColumnWidth(.1),
          2: FractionColumnWidth(.1),
          3: FractionColumnWidth(0.5),
        },
        border: TableBorder.all(
          width: 1.2,
          color: Colors.black,
          style: BorderStyle.solid,
        ),
        children: [
          TableRow(children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 7, horizontal: 12),
              child: Center(
                child: BmBiPair(
                  malayLanguage: 'Sila tanda satu kotak sahaja',
                  engLanguage: 'Please tick one box only',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 7, horizontal: 12),
              child: Center(
                child: BmBiPair(
                  malayLanguage: 'Tidak',
                  engLanguage: 'No',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 7, horizontal: 12),
              child: Center(
                child: BmBiPair(
                  malayLanguage: 'Ya',
                  engLanguage: 'Yes',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 7, horizontal: 12),
              child: BmBiPair(
                malayLanguage: 'Sila Nyatakan',
                engLanguage: 'Please State',
              ),
            ),
          ]),
          TableRow(children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 7, horizontal: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      child: Text('1. ',
                          style: TextStyle(fontSize: 12, color: Colors.black))),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BmBiPair(
                            malayLanguage: bm_fatca1,
                            engLanguage: bi_fatca1,
                          ),
                          SizedBox(height: 2),
                          Container(
                            child: BmBiPair(
                              malayLanguage: bm_fatca1_a,
                              engLanguage: bi_fatca1_a,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(),
            Container(),
            Container(),
          ]),
          TableRow(children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 7, horizontal: 12),
              padding: EdgeInsets.only(left: 13),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      child: Text('b) ',
                          style: TextStyle(fontSize: 12, color: Colors.black))),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 2),
                      child: BmBiPair(
                        malayLanguage: bm_fatca1_b,
                        engLanguage: bi_fatca1_b,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(),
            Container(),
            Container(),
          ]),
          TableRow(children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 7, horizontal: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      child: Text('2. ',
                          style: TextStyle(fontSize: 12, color: Colors.black))),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 2),
                      child: BmBiPair(
                        malayLanguage: bm_fatca2,
                        engLanguage: bi_fatca2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(),
            Container(),
            Container(),
          ]),
          TableRow(children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 7, horizontal: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      child: Text('3. ',
                          style: TextStyle(fontSize: 12, color: Colors.black))),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 2),
                      child: BmBiPair(
                        malayLanguage: bm_fatca3,
                        engLanguage: bi_fatca3,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(),
            Container(),
            Container(),
          ]),
          // TableRow(children: [
          //   Container(height: 20, ),
          //   Container(height: 20),
          //   Container(height: 20),
          //   Container(height: 20),
          // ]),
        ],
      ),
    );
  }
}
