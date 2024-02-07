import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Details extends StatelessWidget {
  final String? img;
  final String title;
  final String? content;

  const Details(
      {super.key,
      required this.img,
      required this.title,
      required this.content});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        Container(
          width: 1.sw,
          height: MediaQuery.of(context).size.height * 2 / 5,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(img ??
                    "https://img.freepik.com/premium-vector/photo-icon-picture-icon-image-sign-symbol-vector-illustration_64749-4409.jpg?size=626&ext=jpg&ga=GA1.1.637631609.1688846713&semt=ais"),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10.r),
          child: Column(
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                content ?? "",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
