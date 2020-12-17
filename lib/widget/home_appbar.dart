import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      pinned: true,
      snap: false,
      title: Text('Breaking Bad API'),
      centerTitle: true,
      expandedHeight: 130.0,
      backgroundColor: Colors.green,
      flexibleSpace: buildFlexibleSpaceBar(),
    );
  }

  FlexibleSpaceBar buildFlexibleSpaceBar() {
    return FlexibleSpaceBar(
      background: Column(
        children: <Widget>[
          SizedBox(height: 90.0),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 6.0, 16.0, 6.0),
            child: Container(
              height: 36.0,
              width: double.infinity,
              child: CupertinoTextField(
                keyboardType: TextInputType.text,
                placeholder: 'Search character',
                placeholderStyle: TextStyle(
                  color: Color(0xffC4C6CC),
                  fontSize: 14.0,
                  fontFamily: 'Brutal',
                ),
                prefix: Padding(
                  padding: const EdgeInsets.fromLTRB(9.0, 6.0, 9.0, 6.0),
                  child: Icon(
                    Icons.search,
                    color: Color(0xffC4C6CC),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Color(0xffF0F1F5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
