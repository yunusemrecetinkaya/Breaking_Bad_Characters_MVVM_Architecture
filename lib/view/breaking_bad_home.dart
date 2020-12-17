import 'package:breaking_bad_api_mvvm_model/view_model/breaking_bad_list_view_model.dart';
import 'package:breaking_bad_api_mvvm_model/widget/home_appbar.dart';
import 'package:breaking_bad_api_mvvm_model/widget/staggared_grid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BreakingBadHomeView extends StatefulWidget {
  @override
  _BreakingBadHomeViewState createState() => _BreakingBadHomeViewState();
}

class _BreakingBadHomeViewState extends State<BreakingBadHomeView> {
  @override
  void initState() {
    super.initState();
    Provider.of<BreakingBadListViewModel>(context, listen: false)
        .getCharactes();
  }

  @override
  Widget build(BuildContext context) {
    var badItem = Provider.of<BreakingBadListViewModel>(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          HomeAppBar(),
          CharactersGrid(badItem: badItem.characters),
        ],
      ),
    );
  }
}
