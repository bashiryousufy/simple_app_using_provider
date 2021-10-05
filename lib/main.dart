import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_news_app_using_provider/models/news_data.dart';
import 'package:simple_news_app_using_provider/views/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => NewsData(),
        builder: (context, child) {
          return HomeScreen();
        },
      ),
    );
  }
}
