import 'package:bank_islam_web/string/bi_string.dart';
import 'package:bank_islam_web/string/bm_string.dart';
import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:flutter/material.dart';

const Color blue = Color(0xff8DB3E2);
const Color lightBlue = Color(0xffC7D9F1);
const Color lightGrey = Color(0xffBFB595);

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
