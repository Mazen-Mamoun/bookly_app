import 'package:bookly_app/features/home/presentation/views/widgets/books_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
          child: BooksListViewItem(),
        );
      }, childCount: 10),
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
