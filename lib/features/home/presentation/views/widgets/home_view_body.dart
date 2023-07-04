import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';
import 'custome_appbar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomeAppBAr(),
          FeaturedBookListView(),
          SizedBox(height: 50),
          Text("Best Seller", style: Styles.titleMudium,),
          SizedBox(height: 50),
          BestSeleerListViewItem()
        ],
      ),
    );
  }
}


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
          Column(
            children: [],
          ),
        ],
      ),
    );
  }
}

