import 'package:breaking_bad_api_mvvm_model/models/breaking_bad_model.dart';
import 'package:dio/dio.dart';

class BreakingBadModelService {
  var dio = Dio();

  Future<List<BreakingBadModel>> fetchCharacters() async {
    String url = 'https://breakingbadapi.com/api/characters';

    final response = await dio.get(url);

    if (response.statusCode == 200) {
      final result = response.data;
      Iterable list = result;
      return list.map((e) => BreakingBadModel.fromJson(e)).toList();
    } else {
      throw Exception('Error.!');
    }
  }
}
