import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:flutter/material.dart';

const Color lightBlue = Color(0xffC7D9F1);

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
