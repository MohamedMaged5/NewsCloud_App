import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_ui_setup/models/category_model.dart';

import 'category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
  final List<CategoryModel> categoryList = const [
    CategoryModel(name: "Sports", img: "assets/sports.avif"),
    CategoryModel(name: "Technology", img: "assets/technology.jpeg"),
    CategoryModel(name: "Science", img: "assets/science.avif"),
    CategoryModel(name: "Health", img: "assets/health.avif"),
    CategoryModel(name: "Business", img: "assets/business.jpeg"),
    CategoryModel(name: "Entertainment", img: "assets/entertaiment.avif"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categoryList[index],
          );
        },
      ),
    );
  }
}
