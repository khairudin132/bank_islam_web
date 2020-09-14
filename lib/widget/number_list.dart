import 'dart:ui';

import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:flutter/material.dart';

class BuildNumberList extends StatelessWidget {
  List<String> numberBmSentences;
  List<String> numberBiSentences;
  int noIteration;
  BuildNumberList(
      {this.numberBmSentences, this.numberBiSentences, this.noIteration});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: buildListNumber(),
    );
  }

  List<Widget> buildListNumber() {
    List<Widget> list = [];
    for (int i = 0; i < noIteration; i++) {
      list.add(buildNumber(numberBmSentences[i], numberBiSentences[i], i));
    }
    return list;
  }

  Widget buildNumber(String bm, String bi, int i) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1),
      child: Column(
        children: [
          SizedBox(height: 2),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text('${++i}.',
                    style: i == 7
                        ? TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)
                        : TextStyle(fontSize: 12, color: Colors.black)),
              ),
              SizedBox(width: 4),
              Flexible(
                child: Container(
                  padding: EdgeInsets.only(top: 2),
                  child: BmBiPair(
                    malayTextBold: i == 7 ? true : false,
                    engTextBold: i == 7 ? true : false,
                    malayLanguage: bm,
                    engLanguage: bi,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
