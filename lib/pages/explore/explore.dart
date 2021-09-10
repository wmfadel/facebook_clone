import 'package:facebook_clone/resources/images.dart';
import 'package:facebook_clone/widgets/explore_page/explore_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(height: 10),
          ExploreTile(title: 'Dasha Taran', image: Images.mainUser),
          ExploreTile(title: 'Friends', image: Images.expFriends),
          ExploreTile(title: 'Memories', image: Images.expMemories),
          ExploreTile(title: 'Messenger', image: Images.expMessenger),
          ExploreTile(title: 'Group', image: Images.expGroups),
          ExploreTile(title: 'MarketPlace', image: Images.expMarket),
          ExploreTile(title: 'Watch', image: Images.expWatch),
          ExploreTile(title: 'Saved', image: Images.expSaved),
          ExploreTile(title: 'Ads', image: Images.expAds),
          ExploreTile(title: 'Blood Donations', image: Images.expBlod),
          ExploreTile(title: 'Campus', image: Images.expCampus),
          ExploreTile(title: 'COVID-19 Information', image: Images.expCovid),
          ExploreTile(title: 'Emotional Health', image: Images.expHealth),
          ExploreTile(title: 'Events', image: Images.expEvents),
          ExploreTile(title: 'Facebook Pay', image: Images.expPay),
          ExploreTile(title: 'Favorites', image: Images.expFavorite),
          ExploreTile(title: 'Friends List', image: Images.expFriendsList),
          ExploreTile(title: 'Fundraisers', image: Images.expFundraisers),
          ExploreTile(title: 'Gaming Video', image: Images.expGames),
          ExploreTile(title: 'Jobs', image: Images.expJobs),
          ExploreTile(title: 'Live Videos', image: Images.expLive),
          ExploreTile(title: 'Messenger Kids', image: Images.expMessengerKids),
          ExploreTile(title: 'Most Recent', image: Images.expRecent),
          ExploreTile(title: 'Pages', image: Images.expPages),
          ExploreTile(title: 'Play Games', image: Images.expGames),
          ExploreTile(title: 'Recent Ad Activity', image: Images.expRecentAds),
          ExploreTile(title: 'Weather', image: Images.expWeather),
          SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Privacy  · Terms  · Advertising  · Ad Choices   · Cookies  ·   · Facebook © 2021',
              style: TextStyle(color: Colors.grey),
              softWrap: true,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
