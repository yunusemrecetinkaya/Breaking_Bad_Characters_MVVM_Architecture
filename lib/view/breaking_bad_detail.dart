import 'package:breaking_bad_api_mvvm_model/view_model/breaking_bad_view_model.dart';
import 'package:breaking_bad_api_mvvm_model/widget/image_loading.dart';
import 'package:flutter/material.dart';

class BreakingBadDetail extends StatelessWidget {
  BreakingBadViewModel _item;
  BreakingBadDetail(BreakingBadViewModel item) {
    this._item = item;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.yellow[900],
      body: Column(
        children: [
          buildCharactersImage(size, context),
          buildCharactersDetail(size),
        ],
      ),
    );
  }

  Container buildCharactersDetail(Size size) {
    return Container(
      width: double.infinity,
      height: size.height * .3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            _item.name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Birthday : ',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                _item.birthday,
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Status : ',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                _item.status,
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 20,
                  color: _item.status == 'Deceased'
                      ? Colors.red[800]
                      : Colors.green[800],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Portrayed : ',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                _item.portrayed,
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Stack buildCharactersImage(Size size, BuildContext context) {
    return Stack(
      children: [
        Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          height: size.height * .7,
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 30,
                color: Colors.black,
                offset: Offset(0, 7),
              )
            ],
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(50, 50),
                bottomRight: Radius.elliptical(50, 50)),
          ),
          child: SizedBox.expand(
            child: Hero(
              tag: _item.nickname,
              child: ImageLoading(_item.img),
            ),
          ),
        ),
        Container(
          height: size.height * .7,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.transparent, Colors.black38],
              end: Alignment.topCenter,
              begin: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(50, 50),
                bottomRight: Radius.elliptical(50, 50)),
          ),
        ),
        SafeArea(
          child: Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  _item.nickname,
                  style: TextStyle(fontSize: 26, color: Colors.white),
                )),
          ),
        ),
      ],
    );
  }
}
