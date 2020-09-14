import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColumnFormField extends StatelessWidget {
  @required
  String malay;
  @required
  String eng;
  double height;
  double width;
  EdgeInsetsGeometry marginBox;
  EdgeInsetsGeometry marginColumn;
  ColumnFormField(
      {this.malay,
      this.eng,
      this.height,
      this.marginBox,
      this.marginColumn,
      this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: marginColumn,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BmBiPair(
            malayLanguage: malay,
            engLanguage: eng,
          ),
          SizedBox(height: 1.5),
          Container(
            margin: marginBox,
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
                width: 1.2,
                style: BorderStyle.solid,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
