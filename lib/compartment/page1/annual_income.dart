import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AnnualIncome extends StatelessWidget {
  @required
  String malay;
  @required
  String eng;
  AnnualIncome({
    this.malay,
    this.eng,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BmBiPair(
          malayLanguage: malay,
          engLanguage: eng,
        ),
        SizedBox(height: 1.5),
        Row(
          children: [
            IncomeColumn1(),
            IncomeColumn2(),
            IncomeColumn3(),
          ],
        ),
      ],
    );
  }
}

class IncomeColumn1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 12),
        Container(
          width: 20,
          child: Table(
            border: TableBorder.all(
              width: 1.2,
              color: Colors.black87,
              style: BorderStyle.solid,
            ),
            children: [
              TableRow(children: [
                Container(color: Colors.white, height: 20),
              ]),
              TableRow(children: [
                Container(color: Colors.white, height: 20),
              ]),
              TableRow(children: [
                Container(color: Colors.white, height: 20),
              ]),
              TableRow(children: [
                Container(color: Colors.white, height: 20),
              ])
            ],
          ),
        ),
        SizedBox(width: 10),
        Container(
          width: 200,
          child: Table(
            children: [
              TableRow(children: [
                Container(
                  height: 20,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      BmBiPair(
                        malayLanguage: 'Tiada',
                        engLanguage: 'Nil',
                      ),
                    ],
                  ),
                ),
              ]),
              TableRow(children: [
                Container(
                  height: 20,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('< RM5,000',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.normal)),
                    ],
                  ),
                ),
              ]),
              TableRow(children: [
                Container(
                  height: 20,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('RM5,001 – RM15,000',
                          style: TextStyle(fontSize: 12, color: Colors.black)),
                    ],
                  ),
                ),
              ]),
              TableRow(children: [
                Container(
                  height: 20,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('RM15,001 – RM30,000',
                          style: TextStyle(fontSize: 12, color: Colors.black)),
                    ],
                  ),
                ),
              ]),
            ],
          ),
        ),
        SizedBox(width: 40),
      ],
    );
  }
}

class IncomeColumn2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10),
        Container(
          width: 20,
          child: Table(
            border: TableBorder.all(
              width: 1.2,
              color: Colors.black87,
              style: BorderStyle.solid,
            ),
            children: [
              TableRow(children: [
                Container(color: Colors.white, height: 20),
              ]),
              TableRow(children: [
                Container(color: Colors.white, height: 20),
              ]),
              TableRow(children: [
                Container(color: Colors.white, height: 20),
              ]),
              TableRow(children: [
                Container(color: Colors.white, height: 20),
              ])
            ],
          ),
        ),
        SizedBox(width: 10),
        Container(
          width: 200,
          child: Table(
            children: [
              TableRow(children: [
                Container(
                  height: 20,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('RM30,001 – RM60,000',
                          style: TextStyle(fontSize: 12, color: Colors.black)),
                    ],
                  ),
                ),
              ]),
              TableRow(children: [
                Container(
                  height: 20,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('RM60,001 – RM100,000',
                          style: TextStyle(fontSize: 12, color: Colors.black)),
                    ],
                  ),
                ),
              ]),
              TableRow(children: [
                Container(
                  height: 20,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('RM100,001 – RM300,000',
                          style: TextStyle(fontSize: 12, color: Colors.black)),
                    ],
                  ),
                ),
              ]),
              TableRow(children: [
                Container(
                  height: 20,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('RM300,001 – RM700,000',
                          style: TextStyle(fontSize: 12, color: Colors.black)),
                    ],
                  ),
                ),
              ]),
            ],
          ),
        ),
        SizedBox(width: 40),
      ],
    );
  }
}

class IncomeColumn3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10),
        Container(
          width: 20,
          child: Table(
            border: TableBorder.all(
              width: 1.2,
              color: Colors.black87,
              style: BorderStyle.solid,
            ),
            children: [
              TableRow(children: [
                Container(color: Colors.white, height: 20),
              ]),
              TableRow(children: [
                Container(color: Colors.white, height: 20),
              ]),
              TableRow(children: [
                Container(color: Colors.white, height: 20),
              ]),
            ],
          ),
        ),
        SizedBox(width: 10),
        Container(
          width: 200,
          child: Table(
            children: [
              TableRow(children: [
                Container(
                  height: 20,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('RM700,001 – RM1,300,000',
                          style: TextStyle(fontSize: 12, color: Colors.black)),
                    ],
                  ),
                ),
              ]),
              TableRow(children: [
                Container(
                  height: 20,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('RM1,300,001 – RM2,700,000',
                          style: TextStyle(fontSize: 12, color: Colors.black)),
                    ],
                  ),
                ),
              ]),
              TableRow(children: [
                Container(
                  height: 20,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('> RM2,700,001',
                          style: TextStyle(fontSize: 12, color: Colors.black)),
                    ],
                  ),
                ),
              ]),
            ],
          ),
        ),
        SizedBox(width: 40),
      ],
    );
  }
}
