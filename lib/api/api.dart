import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  final String baseUrl = 'https://form.jotform.com/250913356828059';
  final String apiKey = '	4bc523a97dc0d77b141fa99ab320a0cf'; 

  Future<List<String>> fetchFormQuestions(String formId) async {
    final url = Uri.parse('$baseUrl/form/$formId?apiKey=$apiKey');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final fields = data['content']['fields'] as List;

      return fields.map((field) => field['label'] as String).toList();
    } else {
      throw Exception('Failed to fetch form questions: ${response.statusCode}');
    }
  }
}