import 'package:flutter/material.dart';
import 'package:intro_app/Blog_App/service/blog_database_service.dart';
import 'package:intro_app/Blog_App/view/home_screen_view/home_screen_widgets/blog_card_widgets.dart';
import 'package:intro_app/Blog_App/view/home_screen_view/home_screen_widgets/home_screen_app_bar_user_icon.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F4F3),
      appBar: AppBar(
        backgroundColor: Color(0xFFF2F4F3),
        title: UserIcon(),
        actions: [
          Image(
            width: 24,
            height: 24,
            color: Colors.black45,
            image: AssetImage('assets/icons/notification.png'),
          ),
          SizedBox(width: 24),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Blog of the week',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 6),
              Text(
                'Trending blogs and news',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 24),
              ...buildBlogCards(),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> buildBlogCards() {
    return blogDatabaseService.blogs.map((blogModel) {
      return BlogCardWidget(blogModel: blogModel);
    }).toList();
  }
}