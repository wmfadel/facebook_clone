import 'package:facebook_clone/blocs/feed_cubit/feed_cubit.dart';
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
            itemCount: (state as FeedLoadedState).feedList.length,
            itemBuilder: (BuildContext context, int index) {
              return Text(state.feedList[index].user.name);
            },
          );
        }
      },
    );
  }
}