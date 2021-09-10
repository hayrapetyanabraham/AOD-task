import 'package:aod_task/model/news.dart';

class NewsFeedRepository {
  Future<List<News>> getHorizontalFeeds() async {
    var listNews = <News>[
      News(
          image: 'assets/horizontal/img1.png',
          title: 'Architect LLS',
          description:
              'Here’s a place for text Project  description m Ipsum has been the industry',
          news:
              'Here’s a place for text Project  description m Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,'),
      News(
          image: 'assets/horizontal/img2.png',
          title: 'Architect LLS',
          description:
              'Here’s a place for text Project  description m Ipsum has been the industry',
          news:
              'Here’s a place for text Project  description m Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,'),
      News(
          image: 'assets/horizontal/img3.png',
          title: 'Architect LLS',
          description:
              'Here’s a place for text Project  description m Ipsum has been the industry',
          news:
              'Here’s a place for text Project  description m Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,')
    ];
    return listNews;
  }

  Future<List<News>> getVerticalFeeds() async {
    var listNews = <News>[
      News(
          image: 'assets/vertical/img1.png',
          title: 'Bork LLS',
          description:
              'Here’s a place for text Project  description m Ipsum has been the industry',
          news:
              'Here’s a place for text Project  description m Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,'),
      News(
          image: 'assets/vertical/img2.png',
          title: 'Bork LLS',
          description:
              'Here’s a place for text Project  description m Ipsum has been the industry',
          news:
              'Here’s a place for text Project  description m Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,'),
      News(
          image: 'assets/vertical/img3.png',
          title: 'Bork LLS',
          description:
              'Here’s a place for text Project  description m Ipsum has been the industry',
          news:
              'Here’s a place for text Project  description m Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,')
    ];
    return listNews;
  }
}
