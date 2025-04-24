import 'package:flutter/material.dart';
import 'package:intro_app/Blog_App/model/blog_model.dart';

class BlogCardTimeDetails extends StatelessWidget {
  const BlogCardTimeDetails({
    super.key,
    required this.blog,
  });

  final BlogModel blog;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.access_time,
          color: Colors.grey,
          size: 16,
        ),
        const SizedBox(width: 4),
        Text(
          '${blog.createdDaysAgo()} days ago',
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 12,
          ),
        ),
        const SizedBox(width: 4),
        const Text(
          '•',
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(width: 4),
        Text(
          '${blog.readTimeInMinutes()} min read',
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}