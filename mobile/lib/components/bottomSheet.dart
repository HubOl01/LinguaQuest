import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/models/ModuleModel.dart';

class BottomSheetContent extends StatelessWidget {
  final ScrollController controller;
  final List<Lesson> lessons;
  const BottomSheetContent({super.key, required this.lessons, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: controller,
      child: Column(
        children: [
          Column(
              mainAxisSize: MainAxisSize.min,
              children: lessons
                  .map((lesson) => Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              lesson.titleLesson,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              lesson.rule,
                              style: const TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ))
                  .toList()),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 40,
            width: context.width - 20,
            child: ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Понятно",
                  style: TextStyle(fontSize: 18, color: Colors.white)),
            ),
          )
        ],
      ),
    );

    // <Widget>[
    //   Text(
    //     content,
    //     style: const TextStyle(fontSize: 24),
    //   ),
    //   const SizedBox(
    //     height: 10,
    //   ),

    // );
  }
}
