import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustumeListViewItem extends StatelessWidget {
  const CustumeListViewItem({super.key});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        aspectRatio: 2.7/4,
        child: Container(
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.green,
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.testImage),
            ),
          ),
        ),
      ),
    );
  }
}