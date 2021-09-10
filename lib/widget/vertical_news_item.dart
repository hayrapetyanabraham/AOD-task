import 'package:aod_task/model/news.dart';
import 'package:flutter/material.dart';

class VerticalNewsItem extends StatelessWidget {
  final News news;
 final Function onItemClick;

  const VerticalNewsItem({Key key, this.news, this.onItemClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onItemClick,
      child: Container(
        height: 330,
        child: Stack(
          children: [
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 270,
                  padding: EdgeInsets.only(left: 8),
                  child: Card(
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 155,
                        padding:
                            EdgeInsets.only(left: 32, right: 32, bottom: 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              news.title,
                              maxLines: 1,
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              news.news,
                              maxLines: 4,
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 176,
                child: Image.asset(news.image, fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
