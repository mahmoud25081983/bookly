import 'package:flutter/material.dart';

import 'custome_book_details_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CustomeBookDetailsAppBar()
        ],
      ),
    );
  }
}

