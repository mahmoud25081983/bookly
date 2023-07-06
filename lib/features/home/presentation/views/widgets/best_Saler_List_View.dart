import 'package:flutter/material.dart';
import 'best_saler_List_view_item.dart';

class BestSalerListView extends StatelessWidget {
  const BestSalerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BestSeleerListViewItem(),
        );
      },
    );
  }
}
