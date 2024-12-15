```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<dynamic> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
    // Consider more sophisticated error handling based on the type of exception
    rethrow;
  }
}

void main() async {
  try {
    final data = await fetchData();
    print('Data received: $data');
  } catch (e) {
    print('Error: $e'); // Handle exceptions gracefully
  }
}
```