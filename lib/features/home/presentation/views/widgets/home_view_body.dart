import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import 'best_Saler_List_View.dart';
import 'custome_appbar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kPadding),
                child: CustomeAppBAr(),
              ),
              FeaturedBookListView(),
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kPadding),
                child: Text("Best Seller", style: Styles.textStyle18),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kPadding),
            child: BestSalerListView(),
          ),
        )
      ],
    );
  }
}
