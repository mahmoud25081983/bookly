import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'booking_ratting.dart';
import 'custome_book_details_appbar.dart';
import 'custome_book_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomeBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const CustomeBookImage(),
          ),
          const SizedBox(height: 43),
          Text("The Junk Book",
              style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(height: 6),
          Opacity(
            opacity: 0.7,
            child: Text(
              "Rudyard Kipling",
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const SizedBox(height: 18),
          const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        ],
      ),
    );
  }
}
