import 'package:LinguaQuest/pages/profile/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/data/avatars.dart';
import '../core/models/avatarModel.dart';

class BottomSheetContent extends StatelessWidget {
  const BottomSheetContent();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(8),
            height: 32,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      color:
                          Theme.of(context).colorScheme.primary.withOpacity(.5))
                ],
                color: Theme.of(context).colorScheme.surface),
            child: TabBar(
              // padding: const EdgeInsets.all(10),
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                // boxShadow: [
                //   BoxShadow(
                //       blurRadius: 10,
                //       color:
                //           Theme.of(context).colorScheme.primary.withOpacity(.5))
                // ],
                borderRadius: BorderRadius.circular(20),
              ),
              unselectedLabelColor: Theme.of(context).colorScheme.primary,
              labelColor: Theme.of(context).colorScheme.onPrimary,
              dividerColor: Colors.black,
              tabs: const [
                Tab(text: 'Man'),
                Tab(text: 'Woman'),
              ],
            ),
          ),
          Flexible(
            child: TabBarView(
              children: [
                AvatarList(
                    avatars: avatars
                        .where((avatar) => avatar.type == 'man')
                        .toList()),
                AvatarList(
                    avatars: avatars
                        .where((avatar) => avatar.type == 'woman')
                        .toList()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AvatarList extends StatefulWidget {
  final List<AvatarModel> avatars;

  const AvatarList({required this.avatars});

  @override
  State<AvatarList> createState() => _AvatarListState();
}

class _AvatarListState extends State<AvatarList> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(2),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 2, mainAxisSpacing: 2),
      itemCount: widget.avatars.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(widget.avatars[index].url_avatar),
          ),
          onTap: () {
            currentAvatarCubit.changeAvatar(widget.avatars[index]);
            Get.back();
          },
        );
      },
    );
  }
}
