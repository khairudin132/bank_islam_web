import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:flutter/material.dart';

class RowFormField extends StatelessWidget {
  @required
  String malay;
  @required
  String eng;
  double width;
  final EdgeInsetsGeometry padding;
  RowFormField({this.malay, this.eng, this.width, this.padding});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: padding,
          width: width,
          child: BmBiPair(
            malayLanguage: malay,
            engLanguage: eng,
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Container(
            height: 30,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
                width: 1.2,
                style: BorderStyle.solid,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
