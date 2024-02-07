import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_ui_setup/components/category_listview.dart';
import 'package:news_app_ui_setup/components/news_listviewbuilder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "Cloud",
              style: TextStyle(color: Colors.amber),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(child: CategoryListView()),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20.h,
              ),
            ),
            const NewsListViewBuilder(categoryName: "general"),
          ],
        ),
      ),
    );
  }
}
