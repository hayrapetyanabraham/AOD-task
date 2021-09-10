import 'package:aod_task/model/news.dart';
import 'package:flutter/material.dart';

class HorizontalNewsItem extends StatelessWidget {
  final News news;

  const HorizontalNewsItem({Key key, this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      padding: EdgeInsets.only(left: 8),
      child: Card(
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.0),
        ),
        child: Center(
          child: ListTile(
            leading: Image.asset(news.image, fit: BoxFit.cover),
            title: Text(
              news.title,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                news.description,
                maxLines: 2,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
