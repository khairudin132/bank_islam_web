import 'package:bank_islam_web/compartment/page4/contact_us_bm.dart';
import 'package:bank_islam_web/compartment/page4/list_information_bm.dart';
import 'package:bank_islam_web/string/bm_string.dart';
import 'package:bank_islam_web/widget/alphabet_list.dart';
import 'package:bank_islam_web/widget/center_divider.dart';
import 'package:bank_islam_web/widget/clause_format.dart';
import 'package:flutter/material.dart';

const Color blue = Color(0xff8DB3E2);
const Color lightBlue = Color(0xffC7D9F1);
const Color lightGrey = Color(0xffBFB595);

class Page4 extends StatelessWidget {
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
          child1: LeftColumnTextPage4(),
          child2: RightColumnTextPage4(),
        ));
  }
}

class LeftColumnTextPage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UnderlineHeader(underlineHeader: bahagian1),
        Paragraph(paragraph: bahagian1_p1),
        SizedBox(height: 6),
        Paragraph(paragraph: bahagian1_p2),
        SizedBox(height: 6),
        Header(header: jenis_maklumat_peribadi),
        Paragraph(paragraph: jenis_maklumat_peribadi_p1),
        Container(
            padding: EdgeInsets.only(left: 12), child: ListInformationBm()),
        Paragraph(paragraph: jenis_maklumat_peribadi_p2),
        SizedBox(height: 6),
        Header(header: gagal_membekalkan_data),
        Paragraph(paragraph: gagal_membekalkan_data_p1),
        SizedBox(height: 6),
        Header(header: tujuan_pengambilan_data),
        Paragraph(paragraph: tujuan_pengambilan_data_p1),
        BuildAlphabetList(
            alphabetSentences: list_tujuan_pengambilan_data,
            noIteration: 13,
            initIteration: 0),
        SizedBox(height: 6),
        Header(header: pendedahan_data),
        Paragraph(paragraph: pendedahan_data_p1),
        BuildAlphabetList(
            alphabetSentences: list_pendedahan_data,
            noIteration: 4,
            initIteration: 0),
      ],
    );
  }
}

class RightColumnTextPage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BuildAlphabetList(
            alphabetSentences: list_pendedahan_data,
            noIteration: 9,
            initIteration: 4),
        SizedBox(height: 4),
        Paragraph(paragraph: pendedahan_data_p2),
        SizedBox(height: 6),
        Header(header: memindahkan_maklumat_peribadi),
        Paragraph(paragraph: memindahkan_maklumat_peribadi_p1),
        SizedBox(height: 6),
        Header(header: penyimpanan_data_peribadi),
        Paragraph(paragraph: penyimpanan_data_peribadi_p1),
        SizedBox(height: 6),
        Header(header: data_maklumat_pihak_ketiga),
        Paragraph(paragraph: data_maklumat_pihak_ketiga_p1),
        SizedBox(height: 6),
        Header(header: jualan_silang_pilihan),
        Paragraph(paragraph: jualan_silang_pilihan_p1),
        Paragraph(paragraph: jualan_silang_pilihan_p2),
        SizedBox(height: 4),
        ContactUsBm(),
        SizedBox(height: 4),
        Paragraph(paragraph: jualan_silang_pilihan_p3),
        SizedBox(height: 6),
        Header(header: akses_pembetulan_data),
        Paragraph(paragraph: akses_pembetulan_data_p1),
        SizedBox(height: 6),
        Header(header: cara_hubungi),
        Paragraph(paragraph: cara_hubungi_p1),
        SizedBox(height: 6),
        Header(header: perubahan_notis_privasi),
        Paragraph(paragraph: perubahan_notis_privasi_p1),
        SizedBox(height: 6),
        UnderlineHeader(underlineHeader: bahagian2),
        Header(header: bahagian2_perlindungan_PIDM),
        Paragraph(paragraph: bahagian2_p1),
        BuildAlphabetList(
            alphabetSentences: list_bahagian2,
            noIteration: 3,
            initIteration: 0),
        Paragraph(paragraph: bahagian2_p2),
      ],
    );
  }
}
