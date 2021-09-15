import 'package:facebook_clone/blocs/feed_bloc/feed_bloc.dart';
import 'package:facebook_clone/blocs/navigation_bloc/navigation_bloc.dart';
import 'package:facebook_clone/pages/chat/mobile_chat_page.dart';
import 'package:facebook_clone/pages/home/home_page.dart';
import 'package:facebook_clone/repositories/api_posts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavigationBloc>(
          create: (BuildContext context) => NavigationBloc(),
        ),
        BlocProvider<FeedBloc>(
          create: (BuildContext context) =>
              FeedBloc((ApiPosts()))..add(LoadFeedEvent()),
        ),
      ],
      child: MaterialApp(
        title: 'Facebook',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: HomePage.routeName,
        routes: {
          HomePage.routeName: (context) => const HomePage(),
          MobileChatPage.routeName: (context) => const MobileChatPage(),
        },
      ),
    );
  }
}
