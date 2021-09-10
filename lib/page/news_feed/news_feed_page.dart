import 'dart:math' as math;

import 'package:aod_task/constant/color/colors.dart';
import 'package:aod_task/page/detail/detail_page.dart';
import 'package:aod_task/state/news_feed/news_feed_state.dart';
import 'package:aod_task/widget/news_header_delegate.dart';
import 'package:aod_task/widget/vertical_news_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewsFeedPage extends StatefulWidget {
  const NewsFeedPage({Key key}) : super(key: key);

  @override
  _NewsFeedPageState createState() => _NewsFeedPageState();
}

class _NewsFeedPageState extends State<NewsFeedPage> {
  final newsFeedState = NewsFeedState();

  @override
  void initState() {
    super.initState();
    newsFeedState.initNews();
  }

  final customAppBar = AppBar(
    backgroundColor: Colors.white,
    elevation: 0.0,
    title: new Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: new IconButton(
            icon: SvgPicture.asset(
              'assets/menu/aod.svg',
            ),
            onPressed: () => null,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            icon: SvgPicture.asset(
              'assets/menu/action.svg',
            ),
            onPressed: () => null,
          ),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        appBar: customAppBar,
        body: Observer(builder: (_) {
          return CustomScrollView(slivers: <Widget>[
            SliverPersistentHeader(
              delegate: NewsHeaderDelegate(
                  horizontalNewsList: newsFeedState.horizontalNewsList),
              floating: false,
              pinned: true,
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Another Title ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          )),
                      TextSpan(
                          text:
                              newsFeedState.verticalNewsList.length.toString(),
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: tuna.withOpacity(0.6),
                          )),
                    ],
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  final int itemIndex = index ~/ 2;
                  if (index.isEven) {
                    final news = newsFeedState.verticalNewsList[itemIndex];
                    return VerticalNewsItem(
                      news: news,
                      onItemClick: () {
                        showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (BuildContext context) {
                              return DetailPage(news: news);
                            });
                      },
                    );
                  }
                  return SizedBox(
                    height: 14,
                  );
                },
                childCount:
                    math.max(0, newsFeedState.verticalNewsList.length * 2 - 1),
              ),
            ),
          ]);
        }));
  }
}
