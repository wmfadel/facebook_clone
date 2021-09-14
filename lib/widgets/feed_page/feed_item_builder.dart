import 'package:facebook_clone/blocs/live_feed_cubit/live_feed_cubit.dart';
import 'package:facebook_clone/widgets/feed_page/feed_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeedItemBuilder extends StatelessWidget {
  const FeedItemBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LiveFeedCubit, LiveFeedState>(
      listener: (BuildContext context, LiveFeedState state) {},
      builder: (BuildContext context, LiveFeedState state) {
        if (state is LiveFeedInitial) {
          return FeedItem(state.post);
        } else {
          return FeedItem((state as LiveFeedChange).post);
        }
      },
    );
  }
}
