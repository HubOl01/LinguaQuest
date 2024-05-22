import 'package:LinguaQuest/core/models/avatarModel.dart';
import 'package:LinguaQuest/pages/cardwords/cardWords.dart';
import 'package:LinguaQuest/pages/dictionary/dictionaryPage.dart';
import 'package:LinguaQuest/pages/main/quizPage.dart';
import 'package:LinguaQuest/pages/profile/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../components/bottomSheet.dart';
import '../../components/bottomSheetAvatar.dart';
import '../../core/data/modules.dart';
import '../../core/models/ModuleModel.dart';
import '../../core/utils/cubit/current_avatar_cubit.dart';
import '../rulesPage/rulesPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<ModuleModel> futureModules = [];
  @override
  void initState() {
    fetchModules();
    super.initState();
  }

  Future refreshData() async {
    futureModules = await fetchModules();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              elevation: 0,
              automaticallyImplyLeading: false,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              actions: [
                IconButton(
                    onPressed: () {
                      Get.to(RulesPage());
                    },
                    icon: Icon(Icons.rule_sharp))
              ],
              flexibleSpace: FlexibleSpaceBar(
                expandedTitleScale: 1,
                // titlePadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                // centerTitle: true,
                background: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: 100,
                      child: Row(
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 100,
                              child: GestureDetector(
                                onTap: () => Get.to(const CardWords()),
                                child: Card(
                                  margin: const EdgeInsets.all(0),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    // side: BorderSide(color: Colors.white70, width: 1),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  color: Colors.white,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Cards",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      SvgPicture.asset(
                                        'assets/icons/cards.svg',
                                        height: 30,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 100,
                              child: GestureDetector(
                                onTap: () => Get.to(const DictionaryPage()),
                                child: Card(
                                  margin: const EdgeInsets.all(0),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    // side: BorderSide(color: Colors.white70, width: 1),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  color: Colors.white,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Dictionary",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      SvgPicture.asset(
                                        'assets/icons/dictionary.svg',
                                        height: 30,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // bottom: ,
              title: BlocProvider(
                  create: (context) => currentAvatarCubit,
                  child: BlocBuilder<CurrentAvatarCubit, AvatarModel>(
                      builder: (context, state) => Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(state.url_avatar),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text("Max"),
                            ],
                          ))),

              pinned: true,
              expandedHeight: 170,
              floating: true,
              forceElevated: innerBoxIsScrolled,
            ),
          ];
        },
        body: FutureBuilder(
            future: refreshData(),
            builder: (context, snapshot) {
              return ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  // const SizedBox(
                  //   height: 50,
                  // ),
                  Column(
                    children: futureModules
                        .map((module) => Column(
                              children: [
                                futureModules.isEmpty
                                    ? const SizedBox()
                                    : SizedBox(
                                        height: 40,
                                        child: Stack(
                                          children: [
                                            Center(
                                              child: SizedBox(
                                                width: context.width,
                                                child: Text(
                                                  module.titleModule,
                                                  style: TextStyle(
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                                top: 0,
                                                bottom: 0,
                                                right: 10,
                                                child: GestureDetector(
                                                  onTap: () {
                                                    showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        shape: const RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        20),
                                                                topRight: Radius
                                                                    .circular(
                                                                        20))),
                                                        elevation: 10,
                                                        context: context,
                                                        builder: (BuildContext
                                                            context) {
                                                          return DraggableScrollableSheet(
                                                              expand: false,
                                                              initialChildSize:
                                                                  0.6,
                                                              minChildSize: 0.5,
                                                              maxChildSize: 0.7,
                                                              builder: (_,
                                                                      controller) =>
                                                                  BottomSheetContent(
                                                                      controller:
                                                                          controller,
                                                                      lessons:
                                                                          module
                                                                              .lessons));
                                                        });
                                                    // Get.to(const RulesPage());
                                                  },
                                                  // child: Icon(Icons.list_alt),
                                                  child: Image.asset(
                                                    "assets/icons/rules2.png",
                                                    // height: 30,
                                                    fit: BoxFit.cover,
                                                    // scale: 1.6,
                                                    // width: 40,
                                                  ),
                                                ))
                                          ],
                                        ),
                                      ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Text(
                                    module.descriptionModule,
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Column(
                                  children: module.lessons
                                      .map(
                                        (lesson) => ListTile(
                                          onTap: () {
                                            Get.to(QuizPage(lesson: lesson));
                                          },
                                          title: Text(lesson.titleLesson),
                                          subtitle:
                                              Text(lesson.descriptionLesson),
                                        ),
                                      )
                                      .toList(),
                                )
                              ],
                            ))
                        .toList(),
                  ),
                  // Text(
                  //   "Модуль 1",
                  //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  // ),
                  // ListTile(title: Text("Урок 1")),
                  // ListTile(title: Text("Урок 2")),
                  // ListTile(title: Text("Урок 3")),
                  // Text(
                  //   "Модуль 2",
                  //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  // ),
                  // ListTile(title: Text("Урок 1")),
                  // ListTile(title: Text("Урок 2")),
                  // ListTile(title: Text("Урок 3")),
                  // Text(
                  //   "Модуль 3",
                  //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  // ),
                  // ListTile(title: Text("Урок 1")),
                  // ListTile(title: Text("Урок 2")),
                  // ListTile(title: Text("Урок 3")),
                ],
              );
            }),
      ),
    );
  }
}
