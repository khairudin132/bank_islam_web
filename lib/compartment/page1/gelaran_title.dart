import 'package:bank_islam_web/widget/checkbox_title.dart';
import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:flutter/material.dart';

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
