import 'package:bank_islam_web/string/bi_string.dart';
import 'package:bank_islam_web/string/bm_string.dart';
import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:flutter/material.dart';

class WakalahAkad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BmBiPair(
          malayLanguage: akad_wakalah,
          engLanguage: wakalah_akad,
        ),
        SizedBox(height: 50),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 500,
              child: Divider(
                color: Colors.black,
                height: 1,
                thickness: 1,
              ),
            ),
            BmBiPair(
              malayLanguage: tandatangan_pelanggan,
              engLanguage: customer_signature,
            ),
          ],
        ),
        SizedBox(height: 20),
        BmBiPair(
          malayLanguage: menerima_pelantikan,
          engLanguage: accept_appointment,
        ),
        SizedBox(height: 50),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 500,
              child: Divider(
                color: Colors.black,
                height: 1,
                thickness: 1,
              ),
            ),
            BmBiPair(
              malayLanguage: ditandatangani,
              engLanguage: signed_for,
            ),
          ],
        ),
        // SizedBox(height: 10),
        // SizedBox(height: 10),
      ],
    );
  }
}
