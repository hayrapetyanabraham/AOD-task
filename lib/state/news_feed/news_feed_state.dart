import 'package:aod_task/model/news.dart';
import 'package:aod_task/repository/news_feed/news_feed_repository.dart';
import 'package:mobx/mobx.dart';

part 'news_feed_state.g.dart';

class NewsFeedState = _NewsFeedState with _$NewsFeedState;

abstract class _NewsFeedState with Store {
  final newsFeedRepository = NewsFeedRepository();

  @observable
  List<News> horizontalNewsList = [];

  @observable
  List<News> verticalNewsList = [];

  void initNews() async {
    horizontalNewsList = await newsFeedRepository.getHorizontalFeeds();
    verticalNewsList = await newsFeedRepository.getVerticalFeeds();
  }
}
