import 'package:breaking_bad_api_mvvm_model/models/breaking_bad_model.dart';
import 'package:breaking_bad_api_mvvm_model/services/breking_bad_model_service.dart';
import 'package:flutter/cupertino.dart';

import 'breaking_bad_view_model.dart';

enum PageStatus { completed, searching, empty }

class BreakingBadListViewModel with ChangeNotifier {
  PageStatus pageStatus = PageStatus.empty;
  List<BreakingBadViewModel> characters = List<BreakingBadViewModel>();

  getCharactes() async {
    List<BreakingBadModel> list =
        await BreakingBadModelService().fetchCharacters();
    pageStatus = PageStatus.searching;
    notifyListeners();

    characters =
        list.map((e) => BreakingBadViewModel(breakingBadModel: e)).toList();

    if (characters.isEmpty) {
      pageStatus = PageStatus.empty;
    } else {
      pageStatus = PageStatus.completed;
    }
  }
}
