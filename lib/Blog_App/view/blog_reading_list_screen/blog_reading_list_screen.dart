import 'package:flutter/material.dart';
import 'package:intro_app/Blog_App/service/blog_database_service.dart';
import 'package:intro_app/Blog_App/view/blog_reading_list_screen/blog_reading_list_screen_widgets/blog_card.dart';

class BlogReadingListScreen extends StatelessWidget {
  const BlogReadingListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
        title: const Text(
          'Added reading list',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: [
          const Icon(Icons.more_vert, color: Colors.black),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: blogDatabaseService.blogs.length,
          itemBuilder: (context, index) {
            final blog = blogDatabaseService.blogs[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: BlogCard(blog: blog),
            );
          },
        ),
      ),
    );
  }
}

