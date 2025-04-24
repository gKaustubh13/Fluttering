import 'package:flutter/material.dart';
import 'package:intro_app/Blog_App/model/blog_model.dart';

class BlogCardWidget extends StatelessWidget {
  const BlogCardWidget({super.key, required this.blogModel});

  final BlogModel blogModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.maxFinite,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black38, BlendMode.multiply),
          image: NetworkImage(blogModel.coverImageUrl),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.access_time_rounded, color: Colors.white, size: 18),
              SizedBox(width: 8),
              Text(
                "${blogModel.createdDaysAgo()} days ago • ${blogModel.readTimeInMinutes()} min read",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Spacer(),
              Icon(
                Icons.bookmark_border_rounded,
                color: Colors.white,
                size: 24,
              ),
            ],
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 12),
            decoration: BoxDecoration(
              color: Color(0xFF21AE85),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Text(
              blogModel.tag,
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
          SizedBox(height: 8),
          Text(
            blogModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}