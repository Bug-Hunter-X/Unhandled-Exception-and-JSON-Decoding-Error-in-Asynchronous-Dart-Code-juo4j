```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        return jsonData;
      } catch (e) {
        print('Error decoding JSON: $e');
        return null; // or throw an exception
      }
    } else {
      print('Failed to load data. Status code: ${response.statusCode}');
      return null; // or throw an exception
    }
  } catch (e) {
    print('Error fetching data: $e');
    return null; // or rethrow the exception
  }
}
```