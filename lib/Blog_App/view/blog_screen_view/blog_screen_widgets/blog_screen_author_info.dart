import 'package:flutter/material.dart';
import 'package:intro_app/Blog_App/model/blog_model.dart';

class BlogScreenAuthorInfo extends StatelessWidget {
  const BlogScreenAuthorInfo({
    super.key,
    required this.blog,
  });

  final BlogModel blog;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(blog.createdBy.profilePicture),
          radius: 20,
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              blog.createdBy.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text(
              blog.createdBy.title,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ],
        ),
        const Spacer(),
        Row(
          children: [
            const Icon(
              Icons.remove_red_eye_outlined,
              color: Colors.green,
              size: 18,
            ),
            const SizedBox(width: 4),
            Text(
              "${blog.viewCount}",
              style: const TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}