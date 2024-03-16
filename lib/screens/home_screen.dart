import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application/screens/second_screen.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Theme(
          data: Theme.of(context).copyWith(),
          child: Center(
            child: ElevatedButton(
              onPressed: () async {
                var url = Uri.parse('https://api.quotable.io/random?size=1');
                var response = await http.get(url);
                if (response.statusCode == 200) {
                  // Parse JSON response
                  var jsonResponse = jsonDecode(response.body);
                  var quote = jsonResponse['content'];
                  var author = jsonResponse['author'];
                  // Navigate to SecondScreen with quote and author data
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SecondScreen(
                        quote: quote,
                        author: author,
                      ),
                    ),
                  );
                } else {
                  // Handle error
                  print('Failed to load quote: ${response.statusCode}');
                }
              },
              child: const Text("Get Your Daily Quote Today!"),
            ),
          ),
        ),
      ),
    );
  }
}
