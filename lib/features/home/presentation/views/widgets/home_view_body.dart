import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
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
          Text("Best Seller", style: Styles.titleMudium,)
        ],
      ),
    );
  }
}


