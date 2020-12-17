import 'package:breaking_bad_api_mvvm_model/view/breaking_bad_home.dart';
import 'package:breaking_bad_api_mvvm_model/view_model/breaking_bad_list_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BreakingBadListViewModel()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: BreakingBadHomeView(),
      ),
    );
  }
}
