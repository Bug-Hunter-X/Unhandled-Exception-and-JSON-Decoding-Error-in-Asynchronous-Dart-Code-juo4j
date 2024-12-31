```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Use response.body here, but don't directly return it.
      // Instead, process the data and return something meaningful.
      // For example, parse JSON and return a Dart object.
      final jsonData = jsonDecode(response.body);
      // Properly handle the parsed data
    } else {
      // Handle errors properly, throw an exception or return a meaningful error.
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Always handle exceptions appropriately in production code.
    print('Error fetching data: $e');
    // Re-throw the exception or handle it and return a default value.
    rethrow; // or return a default value
  }
}
```