import 'package:LinguaQuest/pages/cardwords/cardWords.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
                      actions: [
                        // IconButton(onPressed: (){}, icon: Icon(Icons.))
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
                                      SvgPicture.asset('assets/icons/cards.svg', height: 30,)
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
                              child: Card(
                                margin: const EdgeInsets.all(0),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  // side: BorderSide(color: Colors.white70, width: 1),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: Colors.white,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                        'assets/icons/dictionary.svg', height: 30,)
                                  ],
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
              title: Text("Main"),
              pinned: true,
              expandedHeight: 170,
              floating: true,
              forceElevated: innerBoxIsScrolled,
            ),
          ];
        },
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              // const SizedBox(
              //   height: 10,
              // ),
              Text(
                "Модуль 1",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              ListTile(title: Text("Урок 1")),
              ListTile(title: Text("Урок 2")),
              ListTile(title: Text("Урок 3")),
              Text(
                "Модуль 2",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              ListTile(title: Text("Урок 1")),
              ListTile(title: Text("Урок 2")),
              ListTile(title: Text("Урок 3")),
              Text(
                "Модуль 3",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              ListTile(title: Text("Урок 1")),
              ListTile(title: Text("Урок 2")),
              ListTile(title: Text("Урок 3")),
            ],
          ),
        ),
      ),
    );
  }
}
