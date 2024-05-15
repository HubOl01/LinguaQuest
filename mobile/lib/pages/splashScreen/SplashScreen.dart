// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:world_trending/pages/onboarding/OnboardingPage.dart';

// import '../../BottomNavigation.dart';
// import '../../core/storage/storage.dart';
// import '../../core/styles/TextStyles.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen>
//     with SingleTickerProviderStateMixin {
//   @override
//   void initState() {
//     super.initState();
//     SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
//     Future.delayed(const Duration(seconds: 2), () {
//       Get.to(
//           isShowOnboarding ? const OnboardingPage() : const ButtomNavigation());
//     });
//   }

//   @override
//   void dispose() {
//     SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
//         overlays: SystemUiOverlay.values);
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           SvgPicture.asset("assets/logo.svg"),
//           const SizedBox(
//             height: 10,
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 50.0),
//             child: Text(
//               "Global betting laws&stats".toUpperCase(),
//               style: TextStyles.text24w800,
//               textAlign: TextAlign.center,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
