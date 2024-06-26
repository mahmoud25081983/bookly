import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'booking_ratting.dart';
import 'books_action.dart';
import 'custome_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .25),
          child:  const CustomeBookImage(imageUrl: "https://s.udemycdn.com/partner-logos/v4/box-light.svg",),
        ),
        const SizedBox(height: 10),
        Text(
          "The Junk Book",
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
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
        const SizedBox(height: 37),
        const BooksAction(),
      ],
    );
  }
}
