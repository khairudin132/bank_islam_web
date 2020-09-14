import 'package:flutter/material.dart';

class ContactUsBi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text:
              'Bank Islam Contact Center & Customer Care\nLevel 17, Menara Bank Islam\nNo. 22, Jalan Perak\n50450 Kuala Lumpur\nTelefon: +603 2690 0900\nemel:',
          style: TextStyle(
              fontSize: 12,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
          children: <TextSpan>[
            TextSpan(
              text: ' contactcenter@bankislam.com.my',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
          ]),
    );
  }
}
