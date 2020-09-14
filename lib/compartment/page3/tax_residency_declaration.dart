import 'package:bank_islam_web/string/bi_string.dart';
import 'package:bank_islam_web/string/bm_string.dart';
import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:flutter/material.dart';

class TaxResidencyDeclaration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BmBiPair(
          malayLanguage: pembayar_cukai_negara_lain,
          engLanguage: tax_resident_other_country,
        ),
        SizedBox(height: 2.5),
        CheckboxTaxDeclaration(),
        SizedBox(height: 1.5),
        TableTaxDeclaration(),
        SizedBox(height: 1.5),
        BmBiPair(
          malayLanguage: perakuan_maklumat_betul,
          engLanguage: correct_information_declare,
        ),
        SizedBox(height: 1.5),
        BmBiPair(
          malayLanguage: perubahan_maklumat,
          engLanguage: information_change,
        ),
      ],
    );
  }
}

class CheckboxTaxDeclaration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 12),
        Container(
          width: 20,
          child: Table(
            border: TableBorder.all(
              width: 1.2,
              color: Colors.black87,
              style: BorderStyle.solid,
            ),
            children: [
              TableRow(children: [
                Container(color: Colors.white, height: 20),
              ]),
              TableRow(children: [
                Container(color: Colors.white, height: 20),
              ]),
            ],
          ),
        ),
        SizedBox(width: 10),
        Container(
          width: 800,
          child: Table(
            children: [
              TableRow(children: [
                Container(
                  height: 20,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      BmBiPair(
                        malayLanguage: 'Tiada',
                        engLanguage: 'No',
                      ),
                    ],
                  ),
                ),
              ]),
              TableRow(children: [
                Container(
                  width: 35,
                  padding: EdgeInsets.only(top: 2),
                  child: BmBiPair(
                    malayLanguage: kemukakan_TIN_negara,
                    engLanguage: provide_TIN_country,
                  ),
                ),
              ]),
            ],
          ),
        ),
      ],
    );
  }
}

class TableTaxDeclaration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Table(
        border: TableBorder.all(
          width: 1.2,
          color: Colors.black,
          style: BorderStyle.solid,
        ),
        children: [
          TableRow(children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 7, horizontal: 12),
              child: Center(
                child: BmBiPair(
                  align: true,
                  malayLanguage: 'Negara Pemastautin',
                  engLanguage: 'Tax Residency Country',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 7, horizontal: 12),
              child: Center(
                child: BmBiPair(
                  align: true,
                  malayLanguage: 'Nombor Pengenalan Cukai',
                  engLanguage: 'Tax Identification Number (TIN)',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 7, horizontal: 12),
              child: Center(
                child: BmBiPair(
                  align: true,
                  malayLanguage: 'Sekiranya TIN tiada, sila kemukakan sebab',
                  engLanguage: 'If not have TIN, please provide reason',
                ),
              ),
            ),
          ]),
          TableRow(children: [
            Container(height: 30),
            Container(height: 30),
            Container(height: 30),
          ]),
          TableRow(children: [
            Container(height: 30),
            Container(height: 30),
            Container(height: 30),
          ]),
        ],
      ),
    );
  }
}
