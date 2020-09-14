import 'package:bank_islam_web/compartment/page1/annual_income.dart';
import 'package:bank_islam_web/compartment/page1/contact_person.dart';
import 'package:bank_islam_web/compartment/page1/left_column.dart';
import 'package:bank_islam_web/compartment/page1/right_column.dart';
import 'package:bank_islam_web/screen/page1.dart';
import 'package:bank_islam_web/widget/center_divider.dart';
import 'package:bank_islam_web/widget/checkbox_title.dart';
import 'package:bank_islam_web/widget/language_pair.dart';
import 'package:flutter/material.dart';

import 'full_name_page1.dart';
import 'gelaran_title.dart';
import 'guardian_ic.dart';
import 'guardian_non_citizen_id.dart';

class BuildTablePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(
        width: 2.5,
        style: BorderStyle.solid,
      ),
      children: [
        //maklumat anak
        TableRow(children: [
          TitleTable(
            malayLanguage:
                'BORANG PERMOHONAN BAGI PEMBUKAAN AKAUN (AMANAH) / DAFTAR MAKLUMAT PELANGGAN',
            engLanguage:
                'ACCOUNT OPENING APPLICATION FORM FOR (TRUST ACCOUNT) / CUSTOMER INFORMATION REGISTRATION',
          ),
        ]),
        TableRow(children: [
          Container(
            color: lightBlue,
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Row(
                children: [
                  BmBiPair(
                    malayTextBold: true,
                    malayLanguage: 'Kategori ',
                    engLanguage: 'Category',
                  ),
                  SizedBox(width: 40),
                  CheckBoxTitle(
                    malay: 'Akaun Amanah',
                    eng: 'Trust Account',
                  ),
                ],
              ),
            ),
          ),
        ]),
        //cara deposit
        TableRow(children: [
          TitleTable(
            malayLanguage:
                'AKAUN / ACCOUNT & AKAD (Sila rujuk penyataan akad di dalam',
            engLanguage: ' Kindly refer to the akad statement inside)',
          ),
        ]),
        TableRow(children: [
          Container(
            color: lightBlue,
            child: Padding(
              padding: EdgeInsets.all(12),
              child: CheckBoxTitle(
                malayBold: true,
                malay:
                    '*Deposit Bertempoh-i (Tawarruq) – Endowment Fund Sarawak',
                eng: 'Term Deposit-i (Tawarruq)- Endowment Fund Sarawak',
              ),
            ),
          ),
        ]),
        //tarikh matang akaun deposit
        TableRow(children: [
          TitleTable(
            malayLanguage: 'MAKLUMAT IBUBAPA/PENJAGA',
            engLanguage: ' PARENTS/LEGAL GUARDIAN PARTICULARS',
          ),
        ]),
        TableRow(children: [
          Container(
            color: lightBlue,
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GelaranTitle(),
                  SizedBox(height: 10),
                  FullNamePage1(),
                  SizedBox(height: 10),
                  KadPengenalanPenjaga(),
                  SizedBox(height: 10),
                  MaklumanPengenalanBukanWargaPenjaga(),
                  SizedBox(height: 10),
                  CenterDivider(
                    child1: GenderRaceBumi(),
                    child2: Citizenship(),
                  ),
                  SizedBox(height: 10),
                  CenterDivider(
                    child1: MaritalStatus(),
                    child2: Religion(),
                  ),
                  SizedBox(height: 10),
                  CenterDivider(
                    child1: PermanentAddress(),
                    child2: MailingAddress(),
                  ),
                  SizedBox(height: 10),
                  CenterDivider(
                    child1: TelephoneNo(),
                    child2: EducationLevel(),
                  ),
                  SizedBox(height: 10),
                  CenterDivider(
                    child1: LanguageOccupationSector(),
                    child2: EmployerMotherEmail(),
                  ),
                  SizedBox(height: 10),
                  AnnualIncome(
                    malay: '20. Pendapatan Tahunan',
                    eng: 'Annual Income',
                  ),
                  SizedBox(height: 10),
                  ParticularsContactPerson(),
                ],
              ),
            ),
          ),
        ]),
      ],
    );
  }
}
