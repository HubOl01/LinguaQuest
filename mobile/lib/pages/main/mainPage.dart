import 'package:flutter/material.dart';
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
                              child: Card(
                                margin: const EdgeInsets.all(0),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  // side: BorderSide(color: Colors.white70, width: 1),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                color: Colors.white,
                                child: const Center(
                                  child: Text(
                                    "Cards",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
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
                                child: const Center(
                                  child: Text(
                                    "Dictionary",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
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
              title: Text("Main"),
              pinned: false,
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
