import 'dart:convert';

import 'package:http/http.dart' as http;

const baseUrl =
    'https://www.randomnumberapi.com/api/v1.0/random?min=100&max=1000&count=1';

class CountRepository {
  Future<int> getCount() async {
    int countData;

    final url = Uri.parse(baseUrl);
    final response = await http.get(url);

    try {
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        countData = data[0];

        return countData;
      }
    } catch (e) {
      Exception(e.toString());
    }

    throw Exception();
  }
}
