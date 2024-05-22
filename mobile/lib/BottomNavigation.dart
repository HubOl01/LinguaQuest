import 'package:LinguaQuest/pages/chats/chatsPage.dart';
import 'package:LinguaQuest/pages/games/gamesPage.dart';
import 'package:LinguaQuest/pages/main/mainPage.dart';
import 'package:LinguaQuest/pages/posts/postsPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/cubit/navbar/buttom_navigation_bar_cubit.dart';
import 'pages/profile/profilePage.dart';

class ButtomNavigation extends StatefulWidget {
  const ButtomNavigation({super.key});

  @override
  State<ButtomNavigation> createState() => _ButtomNavigationState();
}

class _ButtomNavigationState extends State<ButtomNavigation> {
  // @override
  // void initState() {
  //   SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
  //       overlays: SystemUiOverlay.values);
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ButtomNavigationBarCubit(),
      child: BlocBuilder<ButtomNavigationBarCubit, int>(
          builder: (context, currentIndex) {
        final changeIndex = BlocProvider.of<ButtomNavigationBarCubit>(context);

        return Scaffold(
            body: Stack(
          fit: StackFit.expand,
          children: [
            IndexedStack(
              index: changeIndex.state,
              children: pages,
            ),
            Positioned(
                bottom: 10,
                left: 15,
                right: 15,
                child: SafeArea(
                    child: Container(
                      
                      decoration: BoxDecoration(
                        
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 25)
                        ],
                        // border: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                      borderRadius: BorderRadius.circular(25),
                      ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                      child: BottomNavigationBar(
                        
                        // elevation: 50,
                        onTap: (index) {
                          changeIndex.changeTabIndex(index);
                        },
                        // backgroundColor: grayColor,
                        currentIndex: currentIndex,
                        // selectedItemColor: BarColors.selected,
                        // unselectedItemColor: BarColors.unselected,
                        showSelectedLabels: true,
                        selectedFontSize: 12,
                        unselectedFontSize: 12,
                        showUnselectedLabels: true,
                        enableFeedback: true,
                        landscapeLayout:
                            BottomNavigationBarLandscapeLayout.centered,
                        type: BottomNavigationBarType.fixed,
                        items: [
                          BottomNavigationBarItem(
                              icon: Icon(Icons.school_outlined),
                              label: "Main",
                              tooltip: "Main"),
                          // BottomNavigationBarItem(
                          //     icon: Icon(Icons.games),
                          //     label: "games",
                          //     tooltip: "games"),
                          BottomNavigationBarItem(
                              icon: Icon(Icons.newspaper),
                              label: "Posts",
                              tooltip: "Posts"),
                          BottomNavigationBarItem(
                              icon: Icon(Icons.messenger_outline),
                              label: "Chat",
                              tooltip: "Chat"),
                          BottomNavigationBarItem(
                              icon: Icon(Icons.person_outline),
                              label: "Profile",
                              tooltip: "Profile"),
                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ));
        // bottomNavigationBar:
      }),
    );
  }
}

List<Widget> pages = [
  const MainPage(),
  // const GamesPage(),
  const PostPage(),
  const ChatPage(),
  const ProfilePage()
];
