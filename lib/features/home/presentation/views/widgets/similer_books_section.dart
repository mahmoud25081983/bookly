import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'similar_books_list_view.dart';

class SimilerBooksSection extends StatelessWidget {
  const SimilerBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You Can Also like",
          style: Styles.textStyle14,
        ),
        SizedBox(height: 15),
        SimilarBooksListView()
      ],
    );
  }
}