import 'dart:ui';

import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:flutter/material.dart';

class BuildAlphabetList extends StatelessWidget {
  List<String> alphabetSentences;
  int initIteration;
  int noIteration;
  bool italicAlphabet = false;
  bool italicLetter = false;

  final List<String> alphabet = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
  ];

  BuildAlphabetList({
    this.alphabetSentences,
    this.noIteration,
    this.initIteration,
    this.italicAlphabet,
    this.italicLetter,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: buildListAlphabet(),
    );
  }

  List<Widget> buildListAlphabet() {
    List<Widget> list = [];
    for (int i = initIteration; i < noIteration; i++) {
      list.add(buildAlphabet(alphabetSentences[i], i));
    }
    return list;
  }

  Widget buildAlphabet(String requirement, int i) {
    return Container(
      padding: EdgeInsets.only(left: 6),
      margin: EdgeInsets.only(top: 1),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 13,
                child: Text('${alphabet[i]}.',
                    style: italicLetter == true
                        ? TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontStyle: FontStyle.italic)
                        : TextStyle(fontSize: 12, color: Colors.black)),
              ),
              SizedBox(width: 3),
              Flexible(
                child: Container(
                  // padding: EdgeInsets.only(top: 1),
                  child: Text(
                    requirement,
                    style: italicAlphabet == true
                        ? TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                          )
                        : TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
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
