import 'package:breaking_bad_api_mvvm_model/models/breaking_bad_model.dart';

class BreakingBadViewModel {
  BreakingBadModel _breakingBadModel;

  BreakingBadViewModel({BreakingBadModel breakingBadModel}) {
    this._breakingBadModel = breakingBadModel;
  }

  String get char_id {
    return _breakingBadModel.char_id;
  }

  String get name {
    return _breakingBadModel.name;
  }

  String get birthday {
    return _breakingBadModel.birthday;
  }

  String get img {
    return _breakingBadModel.img;
  }

  String get status {
    return _breakingBadModel.status;
  }

  String get nickname {
    return _breakingBadModel.nickname;
  }

  String get portrayed {
    return _breakingBadModel.portrayed;
  }
}
