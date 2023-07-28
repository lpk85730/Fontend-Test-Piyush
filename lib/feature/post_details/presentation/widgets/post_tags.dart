import 'package:demo_project/feature/post_details/presentation/widgets/post_tag_item.dart';
import 'package:flutter/material.dart';

class PostTags extends StatelessWidget {
  const PostTags({required this.postTagsList, super.key});

  final List<String> postTagsList;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: List.generate(
          postTagsList.length,
          (index) => PostTagItem(label: postTagsList[index]),
        ),
      ),
    );
  }
}
