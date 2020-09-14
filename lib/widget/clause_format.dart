import 'package:flutter/material.dart';
import 'package:super_rich_text/super_rich_text.dart';

class UnderlineHeader extends StatelessWidget {
  String underlineHeader;
  bool italicUnderline = false;
  UnderlineHeader({this.underlineHeader, this.italicUnderline});

  @override
  Widget build(BuildContext context) {
    return Text(
      underlineHeader,
      style: italicUnderline == true
          ? TextStyle(
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 12,
              color: Colors.black,
            )
          : TextStyle(
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
              fontSize: 12,
              color: Colors.black,
            ),
    );
  }
}

class Header extends StatelessWidget {
  String header;
  bool italicHeader = false;
  Header({this.header, this.italicHeader});

  @override
  Widget build(BuildContext context) {
    return Text(
      header,
      style: italicHeader == true
          ? TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 12,
              color: Colors.black,
            )
          : TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
              color: Colors.black,
            ),
    );
  }
}

class Paragraph extends StatelessWidget {
  @required
  String paragraph;
  bool italicSentences = false;
  Paragraph({this.paragraph, this.italicSentences});

  @override
  Widget build(BuildContext context) {
    return SuperRichText(
      textAlign: TextAlign.justify,
      text: paragraph,
      style: italicSentences == true
          ? TextStyle(
              color: Colors.black, fontSize: 12, fontStyle: FontStyle.italic)
          : TextStyle(color: Colors.black, fontSize: 12),
      othersMarkers: [
        MarkerText(
            marker: '<ib>',
            style: TextStyle(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.bold)),
      ],
    );
    //   Text(
    //   paragraph,
    //   textAlign: TextAlign.justify,
    //   style: TextStyle(
    //     fontSize: 12,
    //     color: Colors.black,
    //   ),
    // );
  }
}
