import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_ui_setup/components/news_listview.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/services/news_service.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.categoryName});
  final String categoryName;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    future = NewsService().getNews(category: widget.categoryName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(article: snapshot.data!);
        } else if (snapshot.hasError) {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
                child: Text(
              "there was an error, try later",
              style: TextStyle(fontSize: 18.sp),
            )),
          );
        } else {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
          );
        }
      },
    );
  }
}




/**
 
isloading
        ? const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            ),
          )
        : ariclesList.isNotEmpty
            ? NewsListView(
                article: ariclesList,
              )
            : SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                    child: Text(
                  "there was an error, try later",
                  style: TextStyle(fontSize: 18.sp),
                )),
              );









 */