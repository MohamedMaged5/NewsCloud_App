import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/screens/details_screen.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.article});
  final ArticleModel article;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return DetailsScreen(
              img: article.img,
              title: article.title,
              content: article.content,
            );
          },
        ));
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: Image.network(
              article.img ??
                  "https://img.freepik.com/premium-vector/photo-icon-picture-icon-image-sign-symbol-vector-illustration_64749-4409.jpg?size=626&ext=jpg&ga=GA1.1.637631609.1688846713&semt=ais",
              height: 200.h,
              width: 1.sw,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            article.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            article.subtitle ?? "",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14.sp,
            ),
          )
        ],
      ),
    );
  }
}
