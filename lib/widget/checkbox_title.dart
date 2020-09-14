import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:flutter/material.dart';

class CheckBoxTitle extends StatelessWidget {
  @required
  String malay;
  @required
  String eng;
  bool malayBold = false;
  bool boxBold = false;
  CheckBoxTitle({this.malay, this.eng, this.malayBold, this.boxBold});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              color: Colors.white,
              border: boxBold == true
                  ? Border.all(
                      color: Colors.black, width: 2, style: BorderStyle.solid)
                  : Border.all(
                      color: Colors.black,
                      width: 1.2,
                      style: BorderStyle.solid)),
        ),
        SizedBox(width: 5),
        BmBiPair(
          malayTextBold: malayBold,
          malayLanguage: malay,
          engLanguage: eng,
        ),
        // if (malay == 'Lain-lain(nyatakan)' && eng == 'Others(specify)')
        //   Container(
        //     width: 17,
        //     height: 17,
        //     decoration: BoxDecoration(
        //       color: Colors.white,
        //       border: Border.all(
        //           color: Colors.black, width: 1.2, style: BorderStyle.solid),
        //     ),
        //   )
        // else
        //   Container(),
      ],
    );
  }
}
