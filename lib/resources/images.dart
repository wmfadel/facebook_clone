import 'dart:math';

class Images {
  static const appLogo = 'assets/images/logo.png';
  static const appLogoText = 'assets/images/logo_text.png';
  static const mainUser = 'assets/images/user.jpg';
  static const home = 'assets/images/home.svg';
  static const pages = 'assets/images/pages.svg';
  static const watch = 'assets/images/watch.svg';
  static const groups = 'assets/images/groups.svg';
  static const gaming = 'assets/images/gaming.svg';
  static const menu = 'assets/images/menu.svg';
  static const messenger = 'assets/images/messenger.svg';
  static const expAds = 'assets/images/explore/ads.png';
  static const expBlod = 'assets/images/explore/blod.png';
  static const expCampus = 'assets/images/explore/campus.png';
  static const expCovid = 'assets/images/explore/covid.png';
  static const expEvents = 'assets/images/explore/events.png';
  static const expFavorite = 'assets/images/explore/favorite.png';
  static const expFriendsList = 'assets/images/explore/friends_list.png';
  static const expFriends = 'assets/images/explore/friends.png';
  static const expFundraisers = 'assets/images/explore/fundraisers.png';
  static const expGames = 'assets/images/explore/games.png';
  static const expGroups = 'assets/images/explore/groups.png';
  static const expHealth = 'assets/images/explore/health.png';
  static const expJobs = 'assets/images/explore/jobs.png';
  static const expLive = 'assets/images/explore/live.png';
  static const expMarket = 'assets/images/explore/market.png';
  static const expMemories = 'assets/images/explore/memories.png';
  static const expMessengerKids = 'assets/images/explore/messenger_kids.png';
  static const expMessenger = 'assets/images/explore/messenger.png';
  static const expPages = 'assets/images/explore/pages.png';
  static const expPay = 'assets/images/explore/pay.png';
  static const expPlay = 'assets/images/explore/play.png';
  static const expRecentAds = 'assets/images/explore/recent_ads.png';
  static const expRecent = 'assets/images/explore/recent.png';
  static const expSaved = 'assets/images/explore/saved.png';
  static const expWatch = 'assets/images/explore/watch.png';
  static const expWeather = 'assets/images/explore/weather.png';

  static String randomAvatar() =>
      'assets/images/avatar${_getRandomNumber(1, 8)}.svg';

  static int _getRandomNumber(int min, int max) {
    return min + Random().nextInt(max - min);
  }
}
