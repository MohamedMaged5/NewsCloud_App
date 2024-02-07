import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_ui_setup/components/news_listviewbuilder.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.categoryName});
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(categoryName),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 30.h,
              ),
            ),
            NewsListViewBuilder(
              categoryName: categoryName,
            )
          ],
        ),
      ),
    );
  }
}
