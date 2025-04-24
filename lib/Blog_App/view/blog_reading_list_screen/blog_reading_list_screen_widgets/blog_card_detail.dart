import 'package:flutter/material.dart';
import 'package:intro_app/Blog_App/model/blog_model.dart';
import 'package:intro_app/Blog_App/view/blog_reading_list_screen/blog_reading_list_screen_widgets/blog_card_author.dart';
import 'package:intro_app/Blog_App/view/blog_reading_list_screen/blog_reading_list_screen_widgets/blog_card_time_details.dart';

class BlogCardDetail extends StatelessWidget {
  const BlogCardDetail({
    super.key,
    required this.blog,
  });

  final BlogModel blog;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlogCardTimeDetails(blog: blog),
          const SizedBox(height: 8),
          Text(
            blog.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 8),
          BlogCardAuthor(blog: blog),
        ],
      ),
    );
  }
}