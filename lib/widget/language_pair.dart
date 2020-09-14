import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Color blue = Color(0xff8DB3E2);

class TitleTable extends StatelessWidget {
  @required
  final String malayLanguage;
  @required
  final String engLanguage;

  const TitleTable({this.malayLanguage, this.engLanguage});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7, horizontal: 16),
      color: blue,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: '$malayLanguage /',
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                text: ' $engLanguage',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic),
              ),
            ]),
      ),
    );
  }
}

class TitleRow extends StatelessWidget {
  @required
  final String malayLanguage;
  @required
  final String engLanguage;

  const TitleRow({this.malayLanguage, this.engLanguage});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: '$malayLanguage /',
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                text: ' $engLanguage',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic),
              ),
            ]),
      ),
    );
  }
}

class BmBiPair extends StatelessWidget {
  @required
  final String malayLanguage;
  @required
  final String engLanguage;
  bool malayTextBold = false;
  bool engTextBold = false;
  bool align = false;

  BmBiPair({
    this.malayLanguage,
    this.engLanguage,
    this.malayTextBold,
    this.engTextBold,
    this.align,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: align == true ? TextAlign.center : TextAlign.start,
      text: TextSpan(
          text: '$malayLanguage /',
          style: malayTextBold == true
              ? TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)
              : TextStyle(fontSize: 12, color: Colors.black),
          children: <TextSpan>[
            TextSpan(
              text: ' $engLanguage',
              style: engTextBold == true
                  ? TextStyle(
                      fontSize: 12,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    )
                  : TextStyle(
                      fontSize: 12,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.normal,
                    ),
            ),
          ]),
    );
  }
}
