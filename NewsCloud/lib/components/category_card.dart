import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/screens/category_screen.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel category;
  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return CategoryScreen(
              categoryName: category.name,
            );
          },
        ));
      },
      child: Container(
        margin: EdgeInsets.only(right: 10.r),
        height: 90.h,
        width: 150.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            15.r,
          ),
          image: DecorationImage(
              image: AssetImage(category.img), fit: BoxFit.fill),
        ),
        child: Center(
          child: Text(
            category.name,
            style: TextStyle(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                shadows: const [
                  Shadow(
                      color: Colors.black,
                      blurRadius: 10,
                      offset: Offset(0, 2)),
                ]),
          ),
        ),
      ),
    );
  }
}
