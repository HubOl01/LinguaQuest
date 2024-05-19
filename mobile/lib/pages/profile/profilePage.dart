import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../core/utils/toastShow.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 200,
          // color: Colors.gr,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.network(
                  "https://sun9-71.userapi.com/impg/DkA2EBbxazNq1ZTUP-jColx-jZaqIMaZNIg-hg/OcLjiyUbG-w.jpg?size=1024x1024&quality=95&sign=8952210a4d259c027e4bc0430d13bf9c&c_uniq_tag=YHUBEMe01IH7r6oKHNbaQ3QuNDnhfass0o57WxjLRKo&type=album",
                  height: 150,
                  width: 150,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Max, 20",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              )
            ],
          ),
        ),
        ListTile(
          onTap: () {
            toastShow(context);
          },
          title: Text(
            "Statistics",
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
        ListTile(
          onTap: () {
            toastShow(context);
          },
          title: Text(
            "Languages",
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
        ListTile(
          onTap: () {
            toastShow(context);
          },
          title: Text(
            "My bookmates",
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
        ListTile(
          onTap: () {
            toastShow(context);
          },
          title: Text(
            "My achievements",
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
        ListTile(
          onTap: () {
            toastShow(context);
          },
          title: Text(
            "Settings",
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
      ],
    );
  }

  
}
