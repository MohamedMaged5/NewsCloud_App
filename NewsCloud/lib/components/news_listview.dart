import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.article});
  final List<ArticleModel> article;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: article.length,
        (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 25.h),
            child: NewsTile(article: article[index]),
          );
        },
      ),
    );
  }
}
