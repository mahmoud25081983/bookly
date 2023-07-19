import 'package:flutter/material.dart';
import 'books_details_section.dart';
import 'custome_book_details_appbar.dart';
import 'similer_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomeBookDetailsAppBar(),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(height: 50),
                ),
                SimilerBooksSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}




