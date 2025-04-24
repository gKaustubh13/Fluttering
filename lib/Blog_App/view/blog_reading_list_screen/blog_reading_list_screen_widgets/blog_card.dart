import 'package:flutter/material.dart';
import 'package:intro_app/Blog_App/model/blog_model.dart';
import 'package:intro_app/Blog_App/view/blog_reading_list_screen/blog_reading_list_screen_widgets/blog_card_detail.dart';
import 'package:intro_app/Blog_App/view/blog_reading_list_screen/blog_reading_list_screen_widgets/blog_card_image_widget.dart';

class BlogCard extends StatelessWidget {
  final BlogModel blog;

  const BlogCard({
    super.key,
    required this.blog,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlogCardImageWidget(blog: blog),
            const SizedBox(width: 16),
            
            BlogCardDetail(blog: blog),
          ],
        ),
      ),
    );
  }
}


