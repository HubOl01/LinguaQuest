import 'package:flutter/material.dart';

import '../../core/data/avatars.dart';
import '../../core/utils/toastShow.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text("AI", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          ),
          // const SizedBox(height: 10,),
          ListTile(
            onTap: () {
              toastShow(context);
            },
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(avatars[0].url_avatar),
            ),
            title: Text("Bot 1"),
          ),
          const SizedBox(height: 10,),
          ListTile(
            onTap: () {
              toastShow(context);
            },
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(avatars[1].url_avatar),
            ),
            title: Text("Bot 2"),
          ),
          const SizedBox(height: 10,),
          ListTile(
            onTap: () {
              toastShow(context);
            },
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(avatars[2].url_avatar),
            ),
            title: Text("Bot 3"),
          ),
          const SizedBox(height: 10,),
          ListTile(
            onTap: () {
              toastShow(context);
            },
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(avatars[3].url_avatar),
            ),
            title: Text("Bot 4"),
          ),
        ],
      ),
    );
  }
}
