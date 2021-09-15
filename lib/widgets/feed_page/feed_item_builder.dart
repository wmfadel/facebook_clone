import 'package:facebook_clone/blocs/live_feed_bloc/live_feed_bloc.dart';
import 'package:facebook_clone/widgets/feed_page/feed_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeedItemBuilder extends StatelessWidget {
  const FeedItemBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LiveFeedBloc, LiveFeedState>(
      listener: (BuildContext context, LiveFeedState state) {},
      builder: (BuildContext context, LiveFeedState state) {
        return FeedItem(state.post);
      },
    );
  }
}
