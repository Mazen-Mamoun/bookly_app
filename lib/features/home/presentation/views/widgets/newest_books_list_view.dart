import 'package:bookly_app/core/widget/custom_error_widget.dart';
import 'package:bookly_app/core/widget/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books_cubit/newest_books_state.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is SuccessNewestBooks) {
          return SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                child: BooksListViewItem(booksModel: state.books[index]),
              );
            }, childCount: state.books.length),
          );
        } else if (state is FailureNewestBooks) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(errMessage: state.errMessage),
          );
        } else {
          return SliverToBoxAdapter(child: CustomLoadingIndicator());
        }
      },
    );
  }
}

//     return ListView.builder(
//         //shrinkWrap: true,
//         physics: const NeverScrollableScrollPhysics(),
//         padding: EdgeInsets.zero,
//         itemCount: 10,
//         itemBuilder: (context, index) {
//           return const Padding(
//             padding: EdgeInsets.symmetric(vertical: 10),
//             child: BestSellerListViewItem(),
//           );
//         });
//   }
// }
