import 'package:intro_app/Blog_App/model/blog_model.dart';
import 'package:intro_app/Blog_App/model/user_model.dart';

final BlogDatabaseService blogDatabaseService = BlogDatabaseService();

class BlogDatabaseService {
  final List<BlogModel> blogs = [
     BlogModel(
    title: "Introduction to Machine Learning",
    description: "Understand the basics of machine learning and its applications.",
    coverImageUrl:
        "https://images.unsplash.com/photo-1591453089816-0fbb971b454c?auto=format&fit=crop&q=80",
    createdAt: DateTime(2025, 4, 5),
    viewCount: 1450,
    tag: "Machine Learning",
    createdBy: UserModel(
      name: "Liam Watson",
      title: "ML Engineer",
      profilePicture: "https://randomuser.me/api/portraits/men/22.jpg",
    ),
  ),
  BlogModel(
    title: "Exploring the Metaverse",
    description: "A guide to what the metaverse is and why it matters.",
    coverImageUrl:
        "https://images.unsplash.com/photo-1614729375564-c01e2ab57af5?auto=format&fit=crop&q=80",
    createdAt: DateTime(2025, 3, 27),
    viewCount: 1010,
    tag: "Metaverse",
    createdBy: UserModel(
      name: "Nora Blake",
      title: "XR Researcher",
      profilePicture: "https://randomuser.me/api/portraits/women/15.jpg",
    ),
  ),
  BlogModel(
    title: "Getting Started with Blockchain",
    description: "An overview of blockchain technology and how it works.",
    coverImageUrl:
        "https://images.unsplash.com/photo-1621761191319-c6fb62004040?auto=format&fit=crop&q=80",
    createdAt: DateTime(2025, 3, 10),
    viewCount: 870,
    tag: "Blockchain",
    createdBy: UserModel(
      name: "Oscar Hughes",
      title: "Blockchain Developer",
      profilePicture: "https://randomuser.me/api/portraits/men/40.jpg",
    ),
  ),
  BlogModel(
    title: "Cybersecurity Best Practices",
    description: "Learn how to protect your data in the digital world.",
    coverImageUrl:
        "https://images.unsplash.com/photo-1563013544-824ae1b704d3?auto=format&fit=crop&q=80",
    createdAt: DateTime(2025, 2, 20),
    viewCount: 1190,
    tag: "Cybersecurity",
    createdBy: UserModel(
      name: "Priya Desai",
      title: "Cybersecurity Analyst",
      profilePicture: "https://randomuser.me/api/portraits/women/30.jpg",
    ),
  ),
  BlogModel(
    title: "The Rise of Quantum Computing",
    description: "What is quantum computing and how will it impact the future?",
    coverImageUrl:
        "https://images.unsplash.com/photo-1635070041078-e363dbe005cb?auto=format&fit=crop&q=80",
    createdAt: DateTime(2025, 2, 5),
    viewCount: 970,
    tag: "Quantum",
    createdBy: UserModel(
      name: "Rafael Costa",
      title: "Quantum Researcher",
      profilePicture: "https://randomuser.me/api/portraits/men/55.jpg",
    ),
  ),
  BlogModel(
    title: "Remote Work: The New Normal",
    description: "Explore how remote work is reshaping the workplace.",
    coverImageUrl:
        "https://images.unsplash.com/photo-1584931423298-c576fda54bd2?auto=format&fit=crop&q=80",
    createdAt: DateTime(2025, 1, 25),
    viewCount: 1100,
    tag: "Remote Work",
    createdBy: UserModel(
      name: "Sara Lim",
      title: "HR Consultant",
      profilePicture: "https://randomuser.me/api/portraits/women/24.jpg",
    ),
  ),
  BlogModel(
    title: "Sustainable Tech Trends in 2025",
    description: "How technology is contributing to a greener future.",
    coverImageUrl:
        "https://images.unsplash.com/photo-1473893604213-3df9c15611c0?auto=format&fit=crop&q=80",
    createdAt: DateTime(2025, 1, 15),
    viewCount: 950,
    tag: "Sustainability",
    createdBy: UserModel(
      name: "Tom Eriksson",
      title: "Green Tech Advocate",
      profilePicture: "https://randomuser.me/api/portraits/men/36.jpg",
    ),
  ),
  BlogModel(
    title: "Understanding NFTs",
    description: "A beginner's guide to non-fungible tokens and their uses.",
    coverImageUrl:
        "https://images.unsplash.com/photo-1618005182384-a83a8bd57fbe?auto=format&fit=crop&q=80",
    createdAt: DateTime(2025, 1, 7),
    viewCount: 860,
    tag: "NFT",
    createdBy: UserModel(
      name: "Uma Patel",
      title: "Digital Artist",
      profilePicture: "https://randomuser.me/api/portraits/women/40.jpg",
    ),
  ),
  BlogModel(
    title: "AI in Everyday Life",
    description: "How artificial intelligence is becoming part of our routines.",
    coverImageUrl:
        "https://images.unsplash.com/photo-1531746790731-6c087fecd65a?auto=format&fit=crop&q=80",
    createdAt: DateTime(2024, 12, 29),
    viewCount: 1430,
    tag: "AI",
    createdBy: UserModel(
      name: "Victor Tran",
      title: "AI Strategist",
      profilePicture: "https://randomuser.me/api/portraits/men/48.jpg",
    ),
  ),
  BlogModel(
    title: "Edge Computing Explained",
    description: "Why edge computing matters in a connected world.",
    coverImageUrl:
        "https://images.unsplash.com/photo-1544197150-b99a580bb7a8?auto=format&fit=crop&q=80",
    createdAt: DateTime(2024, 12, 10),
    viewCount: 780,
    tag: "Edge Computing",
    createdBy: UserModel(
      name: "Wendy Zhao",
      title: "Systems Architect",
      profilePicture: "https://randomuser.me/api/portraits/women/38.jpg",
    ),
  ),


  ];
}