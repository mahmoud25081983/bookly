import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class BestSeleerListViewItem extends StatelessWidget {
  const BestSeleerListViewItem({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.green,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.testImage),
                ),
              ),
            ),
          ),
          const SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  "Harry Potter And the Gobelt of Fire",
                  style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                  maxLines: 2,
                ),
              ),
              const SizedBox(height: 3),
              const Text(
                "J.K Rowling",
                style: Styles.textStyle14,
              ),
              const SizedBox(height: 3),
              Row(
                children: [
                  Text(
                    "19.99 EUR",
                    style: Styles.textStyle20
                        .copyWith(fontWeight: FontWeight.bold),
                  ),                 
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}