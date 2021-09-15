import 'package:facebook_clone/blocs/feed_cubit/feed_cubit.dart';
import 'package:facebook_clone/blocs/live_feed_bloc/live_feed_bloc.dart';
import 'package:facebook_clone/models/post.dart';
import 'package:facebook_clone/widgets/feed_page/create_post.dart';
import 'package:facebook_clone/widgets/feed_page/feed_item_builder.dart';
import 'package:facebook_clone/widgets/feed_page/feed_stories.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      controller: kIsWeb ? ScrollController() : null,
      children: [
        ...kIsWeb
            ? [const Stories(), const SizedBox(height: 8), CreatePost()]
            : [CreatePost(), const SizedBox(height: 8), const Stories()],
        BlocConsumer<FeedCubit, FeedState>(
          listener: (BuildContext context, FeedState state) {
            if (state is FeedChangedState) {}
          },
          builder: (BuildContext context, FeedState state) {
            if (state is FeedInitial) {
              return Container();
            } else if (state is FeedLoadingState) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is FeedErrorState) {
              return Center(child: Text(state.message));
            } else if (state is FeedLoadedState) {
              return FeedContent(
                state.feedList,
                key: Key('FROMLOADED-${DateTime.now()}'),
              );
            } else if (state is FeedChangedState) {
              return FeedContent(
                state.feedList,
                key: Key('FROMLOADINg-${DateTime.now()}'),
              );
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ],
    );
  }
}

class FeedContent extends StatelessWidget {
  final List<Post> feedList;
  const FeedContent(
    this.feedList, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      controller: ScrollController(),
      itemCount: feedList.length,
      itemBuilder: (BuildContext context, int index) {
        return BlocProvider<LiveFeedBloc>(
          create: (BuildContext context) => LiveFeedBloc(feedList[index]),
          child: FeedItemBuilder(
            key: Key(feedList[index].id),
          ),
        );
      },
    );
  }
}
