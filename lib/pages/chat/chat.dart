import 'package:facebook_clone/models/connection.dart';
import 'package:facebook_clone/resources/app_colors.dart';
import 'package:facebook_clone/widgets/chat_page/chat_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      key: const Key('chats_tab'),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Contacts', style: TextStyle(fontWeight: FontWeight.bold)),
                Expanded(child: SizedBox()),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: Icon(Icons.video_call),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: Icon(Icons.search),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: Icon(Icons.more_horiz_outlined),
                ),
              ],
            ),
          ),
          ...Connection.connections
              .map((Connection connection) => ChatTile(
                    name: connection.name,
                    image: connection.image,
                  ))
              .toList(),
          const Divider(),
          const Padding(
            padding: EdgeInsets.only(left: 12),
            child: Text(
              'Group Conversations',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: AppColors.iconBckground,
              child: Icon(Icons.add),
            ),
            title: Text('Create New Group'),
          )
        ],
      ),
    );
  }
}
