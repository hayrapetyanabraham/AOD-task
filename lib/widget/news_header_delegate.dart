import 'package:aod_task/constant/color/colors.dart';
import 'package:aod_task/model/news.dart';
import 'package:aod_task/widget/horizontal_news_item.dart';
import 'package:flutter/material.dart';

class NewsHeaderDelegate extends SliverPersistentHeaderDelegate {

  final List<News> horizontalNewsList;

  NewsHeaderDelegate({this.horizontalNewsList});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(
        child: Container(
      decoration: BoxDecoration(
        color: background,
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 8,
            color: Colors.black12,
          )
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 24, right: 32, top: 24, bottom: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Our projects ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          )),
                      TextSpan(
                          text: horizontalNewsList.length.toString(),
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: tuna.withOpacity(0.6),
                          )),
                    ],
                  ),
                ),
                Text(
                  'View More',
                  maxLines: 1,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 131,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: horizontalNewsList.length,
              itemBuilder: (context, index) {
                final news = horizontalNewsList[index];
                return HorizontalNewsItem(news: news);
              },
            ),
          ),
        ],
      ),
    ));
  }

  @override
  double get maxExtent => 224;

  @override
  double get minExtent => 224;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return oldDelegate != this ||
        oldDelegate?.maxExtent != this.maxExtent ||
        oldDelegate?.minExtent != this.minExtent;
  }
}
