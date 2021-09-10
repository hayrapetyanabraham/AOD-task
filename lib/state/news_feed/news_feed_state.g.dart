// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_feed_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NewsFeedState on _NewsFeedState, Store {
  final _$horizontalNewsListAtom =
      Atom(name: '_NewsFeedState.horizontalNewsList');

  @override
  List<News> get horizontalNewsList {
    _$horizontalNewsListAtom.reportRead();
    return super.horizontalNewsList;
  }

  @override
  set horizontalNewsList(List<News> value) {
    _$horizontalNewsListAtom.reportWrite(value, super.horizontalNewsList, () {
      super.horizontalNewsList = value;
    });
  }

  final _$verticalNewsListAtom = Atom(name: '_NewsFeedState.verticalNewsList');

  @override
  List<News> get verticalNewsList {
    _$verticalNewsListAtom.reportRead();
    return super.verticalNewsList;
  }

  @override
  set verticalNewsList(List<News> value) {
    _$verticalNewsListAtom.reportWrite(value, super.verticalNewsList, () {
      super.verticalNewsList = value;
    });
  }

  @override
  String toString() {
    return '''
horizontalNewsList: ${horizontalNewsList},
verticalNewsList: ${verticalNewsList}
    ''';
  }
}
