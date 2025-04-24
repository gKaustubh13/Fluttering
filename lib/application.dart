import 'package:flutter/material.dart';
import 'package:intro_app/Blog_App/model/blog_model.dart';
import 'package:intro_app/Blog_App/model/user_model.dart';
import 'package:intro_app/Blog_App/service/blog_database_service.dart';
import 'package:intro_app/Blog_App/view/blog_reading_list_screen/blog_reading_list_screen.dart';
import 'package:intro_app/Blog_App/view/blog_screen_view/blog_screen.dart';
import 'package:intro_app/Blog_App/view/home_screen_view/home_screen.dart';
// import 'package:intro_app/Cryoto_app/view/exchange_screen_view/exchange_screen.dart';
// import 'package:intro_app/Cryoto_app/view/home_screen_view/home_screen.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomeScreen(),
      // home: ExchangeScreen(),
      // home: BlogScreen(
      //   blog: BlogDatabaseService().blogs[0],
      // ),
      home: BlogReadingListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
