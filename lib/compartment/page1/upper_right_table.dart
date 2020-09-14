import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:flutter/material.dart';

const Color lightBlue = Color(0xffC7D9F1);

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
