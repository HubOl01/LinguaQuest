// import 'package:flutter/material.dart';

// import 'package:flutter_bloc/flutter_bloc.dart';

// import 'core/cubit/navbar/buttom_navigation_bar_cubit.dart';

// class ButtomNavigation extends StatefulWidget {
//   const ButtomNavigation({super.key});

//   @override
//   State<ButtomNavigation> createState() => _ButtomNavigationState();
// }

// class _ButtomNavigationState extends State<ButtomNavigation> {
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => ButtomNavigationBarCubit(),
//       child: BlocBuilder<ButtomNavigationBarCubit, int>(
//           builder: (context, currentIndex) {
//         final changeIndex = BlocProvider.of<ButtomNavigationBarCubit>(context);

//         return Scaffold(
//             body: Stack(
//           fit: StackFit.expand,
//           children: [
//             IndexedStack(
//               index: changeIndex.state,
//               children: pages,
//             ),
//             Positioned(
//                 bottom: 10,
//                 left: 15,
//                 right: 15,
//                 child: SafeArea(
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(25),
//                     child: BottomNavigationBar(
//                       onTap: (index) {
//                         changeIndex.changeTabIndex(index);
//                       },
//                       backgroundColor: grayColor,
//                       currentIndex: currentIndex,
//                       selectedItemColor: BarColors.selected,
//                       unselectedItemColor: BarColors.unselected,
//                       showSelectedLabels: true,
//                       selectedFontSize: 12,
//                       unselectedFontSize: 12,
//                       showUnselectedLabels: true,
//                       enableFeedback: true,
//                       landscapeLayout:
//                           BottomNavigationBarLandscapeLayout.centered,
//                       type: BottomNavigationBarType.fixed,
//                       items: [
//                         BottomNavigationBarItem(
//                             icon: SvgPicture.asset(
//                               "assets/bottombar/icon-1.svg",
//                               colorFilter: ColorFilter.mode(
//                                   currentIndex == 0
//                                       ? BarColors.selected
//                                       : BarColors.unselected,
//                                   BlendMode.srcIn),
//                             ),
//                             label: "Info",
//                             tooltip: "Info"),
//                         BottomNavigationBarItem(
//                             icon: SvgPicture.asset(
//                               "assets/bottombar/icon.svg",
//                               colorFilter: ColorFilter.mode(
//                                   currentIndex == 1
//                                       ? BarColors.selected
//                                       : BarColors.unselected,
//                                   BlendMode.srcIn),
//                             ),
//                             label: "Stats",
//                             tooltip: "Stats"),
//                         BottomNavigationBarItem(
//                             icon: SvgPicture.asset(
//                               "assets/bottombar/icon-2.svg",
//                               colorFilter: ColorFilter.mode(
//                                   currentIndex == 2
//                                       ? BarColors.selected
//                                       : BarColors.unselected,
//                                   BlendMode.srcIn),
//                             ),
//                             label: "Quiz",
//                             tooltip: "Quiz"),
//                         BottomNavigationBarItem(
//                             icon: SvgPicture.asset(
//                               "assets/bottombar/icon-3.svg",
//                               colorFilter: ColorFilter.mode(
//                                   currentIndex == 3
//                                       ? BarColors.selected
//                                       : BarColors.unselected,
//                                   BlendMode.srcIn),
//                             ),
//                             label: "Settings",
//                             tooltip: "Settings"),
//                       ],
//                     ),
//                   ),
//                 ))
//           ],
//         ));
//         // bottomNavigationBar:
//       }),
//     );
//   }
// }

// List<Widget> pages = [
//   LawsPage(),
//   const StatisticsPage(),
//   const QuizPage(),
//   const SettingsPage()
// ];
