import 'package:bank_islam_web/string/bi_string.dart';
import 'package:bank_islam_web/string/bm_string.dart';
import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:flutter/material.dart';

class NotificationDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
              text: 'PEMBERITAHUAN /',
              style: TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: ' NOTIFICATION',
                  style: TextStyle(fontSize: 9, fontStyle: FontStyle.italic),
                ),
              ]),
        ),
        SizedBox(height: 2.5),
        BmBiPair(
          malayLanguage: pemberitahuan,
          engLanguage: notification,
        ),
      ],
    );
  }
}
