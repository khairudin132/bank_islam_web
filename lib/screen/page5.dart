import 'package:bank_islam_web/compartment/page5/contact_us_bi.dart';
import 'package:bank_islam_web/compartment/page5/list_information_bi.dart';
import 'package:bank_islam_web/string/bi_string.dart';
import 'package:bank_islam_web/widget/alphabet_list.dart';
import 'package:bank_islam_web/widget/center_divider.dart';
import 'package:bank_islam_web/widget/clause_format.dart';
import 'package:flutter/material.dart';

const Color blue = Color(0xff8DB3E2);
const Color lightBlue = Color(0xffC7D9F1);
const Color lightGrey = Color(0xffBFB595);

class Page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
            border: Border.all(
          width: 3,
          style: BorderStyle.solid,
        )),
        child: CenterDivider(
          child1: LeftColumnTextPage5(),
          child2: RightColumnTextPage5(),
        ));
  }
}

class LeftColumnTextPage5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UnderlineHeader(italicUnderline: true, underlineHeader: part1),
        // Paragraph(paragraph: part1_p1, italicSentences: true),
        Paragraph(paragraph: part1_p1, italicSentences: true),
        SizedBox(height: 6),
        Paragraph(paragraph: part1_p2, italicSentences: true),
        SizedBox(height: 6),
        Header(header: type_personal_information, italicHeader: true),
        Paragraph(
            paragraph: type_personal_information_p1, italicSentences: true),
        Container(
            padding: EdgeInsets.only(left: 12), child: ListInformationBi()),
        Paragraph(
            paragraph: type_personal_information_p2, italicSentences: true),
        SizedBox(height: 6),
        Header(header: failure_supply_information, italicHeader: true),
        Paragraph(
            paragraph: failure_supply_information_p1, italicSentences: true),
        SizedBox(height: 6),
        Header(header: purposes_collecting_information, italicHeader: true),
        Paragraph(
            paragraph: purposes_collecting_information_p1,
            italicSentences: true),
        BuildAlphabetList(
          alphabetSentences: list_purposes_collecting_information,
          noIteration: 13,
          initIteration: 0,
          italicAlphabet: true,
          italicLetter: true,
        ),
        SizedBox(height: 6),
        Header(header: disclosure_information, italicHeader: true),
        Paragraph(paragraph: disclosure_information_p1, italicSentences: true),
        BuildAlphabetList(
          alphabetSentences: list_disclosure_information,
          noIteration: 9,
          initIteration: 0,
          italicAlphabet: true,
          italicLetter: true,
        ),
      ],
    );
  }
}

class RightColumnTextPage5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 4),
        Paragraph(paragraph: disclosure_information_p2, italicSentences: true),
        SizedBox(height: 6),
        Header(header: transfer_personal_information, italicHeader: true),
        Paragraph(
            paragraph: transfer_personal_information_p1, italicSentences: true),
        SizedBox(height: 6),
        Header(header: retention_personal_information, italicHeader: true),
        Paragraph(
            paragraph: retention_personal_information_p1,
            italicSentences: true),
        SizedBox(height: 6),
        Header(header: third_party_data_information, italicHeader: true),
        Paragraph(
            paragraph: third_party_data_information_p1, italicSentences: true),
        SizedBox(height: 6),
        Header(header: direct_marketing_option, italicHeader: true),
        Paragraph(paragraph: direct_marketing_option_p1, italicSentences: true),
        Paragraph(paragraph: direct_marketing_option_p2, italicSentences: true),
        SizedBox(height: 4),
        ContactUsBi(),
        SizedBox(height: 4),
        Paragraph(paragraph: direct_marketing_option_p3, italicSentences: true),
        SizedBox(height: 6),
        Header(header: access_correction_information, italicHeader: true),
        Paragraph(
            paragraph: access_correction_information_p1, italicSentences: true),
        SizedBox(height: 6),
        Header(header: how_to_contact, italicHeader: true),
        Paragraph(paragraph: how_to_contact_p1, italicSentences: true),
        SizedBox(height: 6),
        Header(header: changes_privacy_notice, italicHeader: true),
        Paragraph(paragraph: changes_privacy_notice_p1, italicSentences: true),
        SizedBox(height: 6),
        UnderlineHeader(underlineHeader: part2, italicUnderline: true),
        Header(header: part2_PIDM_coverage, italicHeader: true),
        Paragraph(paragraph: part2_p1, italicSentences: true),
        BuildAlphabetList(
          alphabetSentences: list_part2,
          noIteration: 3,
          initIteration: 0,
          italicAlphabet: true,
          italicLetter: true,
        ),
        Paragraph(paragraph: part2_p2, italicSentences: true),
      ],
    );
  }
}
