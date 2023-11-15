import 'package:bookly/core/widges/custome_error.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widges/custome_loading_indecater.dart';
import 'custome_book_item.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksCubitSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CustomeBookImage(),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksCubitFailure) {
          return CustomeError(errorMessage: state.errorMsg);
        } else {
          return const CustomeLoadingIndecator();
        }
      },
    );
  }
}
