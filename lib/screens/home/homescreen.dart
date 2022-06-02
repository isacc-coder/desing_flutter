import 'package:desing_pro/models/Blog.dart';
import 'package:desing_pro/screens/home/components/recent_post.dart';
import 'package:desing_pro/screens/home/components/serach.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../responsive.dart';
import 'components/blog_post.dart';
import 'components/categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: List.generate(
              blogPosts.length,
              (index) => BlogPostCard(blog: blogPosts[index]),
            ),
          ),
        ),
        if (!Responsive.isMobile(context)) SizedBox(width: kDefaultPadding),
        // Sidebar
        if (!Responsive.isMobile(context))
          Expanded(
            child: Column(
              children: [
                Search(),
                SizedBox(height: kDefaultPadding),
                Categories(),
                SizedBox(height: kDefaultPadding),
                RecentPosts(),
              ],
            ),
          ),
      ],
    );
  }
}
