import 'package:intro_app/Blog_App/model/user_model.dart';

class BlogModel {
  const BlogModel({
    required this.title,
    required this.description,
    required this.coverImageUrl,
    required this.createdAt,
    required this.viewCount,
    required this.tag,
    required this.createdBy,
  });

  final String title;
  final String description;
  final String coverImageUrl;
  final DateTime createdAt;
  final int viewCount;
  final String tag;
  final UserModel createdBy;

  int createdDaysAgo() {
    return DateTime.now().difference(createdAt).inDays;
  }

  int readTimeInMinutes() {
    final titleWordCount = title.split(' ').length;
    final descriptionWordCount = description.split(' ').length;
    final totalWords = titleWordCount + descriptionWordCount;
    final result = (totalWords / 200).toInt();
    return (result < 1) ? 1 : result;
  }
}