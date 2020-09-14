import 'package:bank_islam_web/string/bm_string.dart';
import 'package:bank_islam_web/widget/bullet_list.dart';
import 'package:flutter/material.dart';

class ListInformationBm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 137,
      child: Stack(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  width: 100,
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(5),
                  width: 100,
                  child: BuildBulletList(
                    bulletSentences: list_maklumat_peribadi,
                    initIteration: 7,
                    noIteration: 12,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(5),
                  width: 100,
                  child: BuildBulletList(
                    bulletSentences: list_maklumat_peribadi,
                    initIteration: 12,
                    noIteration: 17,
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: BuildBulletList(
              bulletSentences: list_maklumat_peribadi,
              initIteration: 0,
              noIteration: 7,
            ),
          ),
        ],
      ),
    );
  }
}
