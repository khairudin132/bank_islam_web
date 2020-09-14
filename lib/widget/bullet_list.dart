import 'package:flutter/material.dart';

class BuildBulletList extends StatelessWidget {
  List<String> bulletSentences;
  int initIteration;
  int noIteration;
  List<String> start;
  List<int> end;
  bool italicBullet = false;
  BuildBulletList(
      {this.bulletSentences,
      this.noIteration,
      this.initIteration,
      this.italicBullet});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: buildListBullet(),
    );
  }

  List<Widget> buildListBullet() {
    List<Widget> list = [];
    for (var i = initIteration; i < noIteration; i++) {
      list.add(buildBullet(bulletSentences[i]));
    }
    return list;
  }

  Widget buildBullet(String requirement) {
    return Container(
      margin: EdgeInsets.only(top: 1),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 4.5,
            height: 4.5,
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(width: 6),
          Flexible(
            child: Text(
              requirement,
              style: italicBullet == true
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
        ],
      ),
    );
  }
}
