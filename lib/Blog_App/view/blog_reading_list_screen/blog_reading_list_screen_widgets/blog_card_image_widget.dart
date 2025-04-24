import 'package:flutter/material.dart';
import 'package:intro_app/Blog_App/model/blog_model.dart';

class BlogCardImageWidget extends StatelessWidget {
  const BlogCardImageWidget({
    super.key,
    required this.blog,
  });

  final BlogModel blog;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.network(
        blog.coverImageUrl,
        width: 130,
        height: 140,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            width: 130,
            height: 140,
            color: Colors.grey[300],
            child: const Icon(Icons.image, color: Colors.grey),
          );
        },
      ),
    );
  }
}