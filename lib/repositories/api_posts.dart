import 'package:facebook_clone/models/post.dart';
import 'package:facebook_clone/repositories/posts_repository.dart';

class ApiPosts extends PostsRepository {
  @override
  Future<List<Post>> getPosts() async {
    return Future.delayed(
      const Duration(seconds: 2),
      () {
        return <Post>[
          Post(
            id: 'a',
            user: User(
              'Tim Cook',
              'https://pbs.twimg.com/profile_images/1403556543098916872/83tVAzyy_400x400.jpg',
            ),
            text:
                '20 years ago, we were irrevocably changed. We’ll never forget those we lost or the heroic efforts of first responders and everyday Americans on that terrible day. Nor will we forget the sacrifices of those who were called to service in the months and years that followed.',
            publishTime: DateTime.now(),
            likes: [
              'user_id_1',
              'user_id_2',
              'user_id_3',
              'user_id_4',
              'user_id_5',
              'user_id_6',
            ],
            shares: [
              'user_id_1',
              'user_id_2',
              'user_id_3',
            ],
            visibility: Visibility.public,
          ),
          Post(
            id: 'b',
            user: User(
              'Harvard University',
              'https://pbs.twimg.com/profile_images/875797335342817282/JO5OsmxU_400x400.jpg',
            ),
            text:
                'Harvard experts discuss how the events of 9/11 reshaped life in the U.S.',
            publishTime: DateTime(2021, 9, 24, 11, 32),
            visibility: Visibility.friends,
          ),
          Post(
            id: 'c',
            user: User(
              'Product Hunt',
              'https://pbs.twimg.com/profile_images/1423778767055441924/LlPGSAGk_400x400.jpg',
            ),
            text:
                'This is like Canva for entrepreneurs. It even has GPT3 content creation in its pipeline Eyes',
            images: [
              'https://pbs.twimg.com/media/E_AnxXXWQAU6WuZ?format=jpg&name=small',
              'https://pbs.twimg.com/media/E_AnxXcXEAMn0_c?format=jpg&name=small',
              'https://pbs.twimg.com/media/E_AnxXpX0AcaO_A?format=jpg&name=small',
              'https://pbs.twimg.com/media/E_AnxXbX0AsAaRv?format=jpg&name=small',
            ],
            publishTime: DateTime.now().add(const Duration(days: 90)),
            likes: [
              'user_id_1',
              'user_id_2',
              'user_id_3',
            ],
            visibility: Visibility.friends,
          ),
          Post(
            id: 'd',
            user: User(
              'Android Police',
              'https://pbs.twimg.com/profile_images/563109834988335104/mYPfSB_b_400x400.png',
            ),
            text:
                '12 new and notable Android apps and live wallpapers from the last two weeks including KONTXT Voice, Lenovo Smart Frame, and Facebook View (8/28/21 - 9/11/21)',
            images: [
              'https://pbs.twimg.com/media/E_AnUHgVkAE-5sQ?format=png&name=900x900',
            ],
            publishTime: DateTime.now(),
            shares: [
              'user_id_1',
              'user_id_2',
              'user_id_3',
            ],
            visibility: Visibility.public,
          ),
          Post(
            id: 'e',
            user: User(
              'The Verge',
              'https://pbs.twimg.com/profile_images/877903823133704194/Mqp1PXU8_400x400.jpg',
            ),
            text:
                'Disney says the rest of its 2021 slate of movies will have exclusive theatrical releases ',
            images: [
              'https://pbs.twimg.com/media/E_AnNPjXMAQcgyN?format=jpg&name=large'
            ],
            publishTime: DateTime.now().add(const Duration(days: 5)),
            shares: [
              'user_id_1',
              'user_id_2',
              'user_id_3',
            ],
            likes: [
              'user_id_1',
              'user_id_2',
              'user_id_3',
            ],
            visibility: Visibility.public,
          ),
        ];
      },
    );
  }
}
