import 'package:flutter/material.dart';
import 'custome_appbar.dart';
import 'custome_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomeAppBAr(),
        CustumeListViewItem(),
      ],
    );
  }
}
