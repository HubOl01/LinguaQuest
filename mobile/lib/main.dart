import 'package:LinguaQuest/pages/splashScreen/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';

import 'BottomNavigation.dart';
import 'core/data/cubit/posts_public_cubit.dart';
import 'core/data/postData.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  // await getMyPosts(1);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostsPublicCubit(),
      child: GetMaterialApp(
        title: 'LinguaQuest',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // appBarTheme: AppBarTheme(
          //   backgroundColor: ColorScheme.fromSeed(seedColor: Colors.purpleAccent).primary,
          // ),
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff211547)),
          useMaterial3: false,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
