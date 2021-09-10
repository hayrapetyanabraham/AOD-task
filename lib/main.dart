import 'package:aod_task/page/news_feed/news_feed_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Glengarry AI',
      home: NewsFeedPage(),
    );
  }
}