import 'package:facebook_clone/blocs/feed_cubit/feed_cubit.dart';
import 'package:facebook_clone/widgets/feed_page/feed_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeedCubit, FeedState>(
      listener: (BuildContext context, FeedState state) {},
      builder: (BuildContext context, FeedState state) {
        if (state is FeedInitial) {
          return Container();
        } else if (state is FeedLoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is FeedErrorState) {
          return Center(child: Text(state.message));
        } else {
          return ListView.builder(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            controller: ScrollController(),
            itemCount: (state as FeedLoadedState).feedList.length + 1,
            itemBuilder: (BuildContext context, int index) {
              if (index == state.feedList.length) {
                return const SizedBox(height: 150);
              }
              return FeedItem(state.feedList[index]);
            },
          );
        }
      },
    );
  }
}
