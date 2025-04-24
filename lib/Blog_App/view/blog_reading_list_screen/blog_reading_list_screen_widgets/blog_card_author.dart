import 'package:flutter/material.dart';
import 'package:intro_app/Blog_App/model/blog_model.dart';

class BlogCardAuthor extends StatelessWidget {
  const BlogCardAuthor({
    super.key,
    required this.blog,
  });

  final BlogModel blog;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 12,
          backgroundImage: NetworkImage(
            blog.createdBy.profilePicture,
          ),
          onBackgroundImageError: (exception, stackTrace) =>
              const Icon(Icons.person),
        ),
        const SizedBox(width: 8),
        Text(
          blog.createdBy.name,
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 13,
          ),
        ),
        const Spacer(),
        IconButton(
          icon: const Icon(
            Icons.bookmark_border,
            color: Colors.teal,
          ),
          onPressed: () {},
          constraints: const BoxConstraints(),
          padding: EdgeInsets.zero,
          iconSize: 20,
        ),
      ],
    );
  }
}