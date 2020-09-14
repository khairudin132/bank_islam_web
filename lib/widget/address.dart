import 'package:bank_islam_web/widget/col_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Address extends StatelessWidget {
  @required
  String addressMalay;
  @required
  String addressEng;
  @required
  String postcodeMalay;
  @required
  String postcodeEng;
  @required
  String stateMalay;
  @required
  String stateEng;
  Address(
      {this.addressMalay,
      this.addressEng,
      this.postcodeMalay,
      this.postcodeEng,
      this.stateMalay,
      this.stateEng});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ColumnFormField(
          marginBox: EdgeInsets.only(left: 9),
          height: 45,
          malay: addressMalay,
          eng: addressEng,
        ),
        SizedBox(height: 1.5),
        Row(
          children: [
            ColumnFormField(
              marginColumn: EdgeInsets.only(left: 9),
              width: 125,
              height: 30,
              malay: postcodeMalay,
              eng: postcodeEng,
            ),
            SizedBox(width: 20),
            Expanded(
              child: ColumnFormField(
                height: 30,
                malay: stateMalay,
                eng: stateEng,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
