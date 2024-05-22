import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/models/ModuleModel.dart';
import '../../core/models/user_quiz.dart';
import '../../core/styles/TextStyles.dart';

List<UserQuiz> userQuizzes1 = [];

class QuizPage extends StatefulWidget {
  final Lesson lesson;
  const QuizPage({super.key, required this.lesson});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentIndex = 0;
  int checkAnswer = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        leadingWidth: 50,
        // leading: IconButton(
        //     color: whiteColor,
        //     splashRadius: 25,
        //     onPressed: () async {
        //       await showDialog(
        //           context: context,
        //           builder: (context) => CustomDialog(
        //                 content: Padding(
        //                   padding: const EdgeInsets.symmetric(
        //                       vertical: 30.0, horizontal: 15),
        //                   child: Column(
        //                     mainAxisSize: MainAxisSize.min,
        //                     children: [
        //                       Text(
        //                         "Do you want to exit?",
        //                         style: TextStyles.text24w500ClashDisplay,
        //                       ),
        //                       const SizedBox(
        //                         height: 10,
        //                       ),
        //                       Text(
        //                         "If you exit, the results won't be saved",
        //                         style: TextStyles.text17w400Second,
        //                       ),
        //                       const SizedBox(
        //                         height: 20,
        //                       ),
        //                       CustomButton(
        //                           onPressed: () {
        //                             Get.back();
        //                             Get.to(
        //                                 ResultPage(userQuizzes: userQuizzes1));
        //                             setState(() {
        //                               currentIndex = 0;
        //                               checkAnswer = -1;
        //                             });
        //                           },
        //                           title: "Exit"),
        //                       const SizedBox(
        //                         height: 10,
        //                       ),
        //                       CustomButton(
        //                           onPressed: () {
        //                             Get.back();
        //                           },
        //                           title: "Cancel",
        //                           isSecond: true)
        //                     ],
        //                   ),
        //                 ),
        //               ));
        //     },
        //     icon: const Icon(Icons.arrow_back_ios)),
        title: Text(
          widget.lesson.titleLesson,
          textAlign: TextAlign.center,
          // style: TextStyles.text24w500,
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
            child: LinearProgressIndicator(
              minHeight: 7,
              borderRadius: BorderRadius.circular(30),
              value: currentIndex / widget.lesson.quizzes.length,
              color: Theme.of(context).colorScheme.primary,
              backgroundColor:
                  Theme.of(context).colorScheme.primary.withOpacity(.3),
            ),
          ),
          // const SizedBox(
          //   height: 20,
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Text(
                "${currentIndex + 1}/${widget.lesson.quizzes.length}",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: SizedBox(
              height: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.lesson.quizzes[currentIndex].question,
                    style: TextStyles.text24w500,
                  ),
                  widget.lesson.quizzes[currentIndex].urlImage != ""
                      ? Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: CachedNetworkImage(
                              imageUrl:
                                  widget.lesson.quizzes[currentIndex].urlImage,

                              fit: BoxFit.fitHeight,
                              height: 300,
                              // width: context.width - 20,
                            ),
                          ),
                        )
                      : const SizedBox()
                ],
              ),
            ),
          ),
          const Spacer(),
          widget.lesson.quizzes[currentIndex].answers.isEmpty
              ? const SizedBox()
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                    height: 100,
                    child: Row(
                      children: [
                        Expanded(
                            child: GestureDetector(
                          onTap: () {
                            setState(() {
                              checkAnswer = 0;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 7.5),
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: checkAnswer == 0
                                  ? Theme.of(context).colorScheme.primary
                                  : Colors.grey[300],
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                widget.lesson.quizzes[currentIndex].answers[0],
                                // style: TextStyles.text18w400,
                                style: checkAnswer == 0
                                    ? TextStyles.text18w400Secondary
                                    : TextStyles.text18w400,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        )),
                        Expanded(
                            child: GestureDetector(
                          onTap: () {
                            setState(() {
                              checkAnswer = 1;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 7.5),
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: checkAnswer == 1
                                  ? Theme.of(context).colorScheme.primary
                                  : Colors.grey[300],
                              // color: checkAnswer == 1 ? orangeColor : grayColor,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                widget.lesson.quizzes[currentIndex].answers[1],
                                // style: TextStyles.text18w400,
                                style: checkAnswer == 1
                                    ? TextStyles.text18w400Secondary
                                    : TextStyles.text18w400,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        )),
                      ],
                    ),
                  ),
                ),
          widget.lesson.quizzes[currentIndex].answers.length == 2 || widget.lesson.quizzes[currentIndex].answers.isEmpty
              ? const SizedBox()
              : const SizedBox(
                  height: 15,
                ),
          widget.lesson.quizzes[currentIndex].answers.length == 2 || widget.lesson.quizzes[currentIndex].answers.isEmpty
              ? const SizedBox()
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                    height: 100,
                    child: Row(
                      children: [
                        Expanded(
                            child: GestureDetector(
                          onTap: () {
                            setState(() {
                              checkAnswer = 2;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 7.5),
                            padding: const EdgeInsets.all(20),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: checkAnswer == 2
                                  ? Theme.of(context).colorScheme.primary
                                  : Colors.grey[300],
                              // color: checkAnswer == 2 ? orangeColor : grayColor,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                widget.lesson.quizzes[currentIndex].answers[2],
                                // style: TextStyles.text18w400,
                                style: checkAnswer == 2
                                    ? TextStyles.text18w400Secondary
                                    : TextStyles.text18w400,
                                // style: currentIndex + 1 != widget.quizzes.length - 1
                                //     ? TextStyles.text22w500ClashDisplay
                                //     : TextStyles.text18w500ClashDisplay,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        )),
                        Expanded(
                            child: GestureDetector(
                          onTap: () {
                            setState(() {
                              checkAnswer = 3;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 7.5),
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: checkAnswer == 3
                                  ? Theme.of(context).colorScheme.primary
                                  : Colors.grey[300],
                              // color: checkAnswer == 3 ? orangeColor : grayColor,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                widget.lesson.quizzes[currentIndex].answers[3],
                                // style: TextStyles.text18w400,
                                style: checkAnswer == 3
                                    ? TextStyles.text18w400Secondary
                                    : TextStyles.text18w400,
                                // style: currentIndex + 1 != widget.quizzes.length - 1
                                //     ? TextStyles.text22w500ClashDisplay
                                //     : TextStyles.text18w500ClashDisplay,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        )),
                      ],
                    ),
                  ),
                ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: SizedBox(
              width: context.width,
              height: 45,
              child: ElevatedButton(
                child: Text(
                  "Next",
                  // style: TextStyles.textButton,
                ),
                onPressed: checkAnswer == -1
                    ? null
                    : () {
                        setState(() {
                          userQuizzes1.add(UserQuiz(
                              id: currentIndex, idAnswer: checkAnswer));
                          checkAnswer = -1;
                        });
                        if (currentIndex == widget.lesson.quizzes.length - 1) {
                          // Get.to(ResultPage(userQuizzes: userQuizzes1));
                          setState(() {
                            currentIndex = 0;
                            checkAnswer = -1;
                          });
                        } else {
                          setState(() {
                            currentIndex++;
                          });
                        }
                      },
                style: ButtonStyle(
                    elevation: WidgetStatePropertyAll(10),
                    backgroundColor: WidgetStatePropertyAll(checkAnswer == -1
                        ? Colors.grey[400]
                        : Theme.of(context).colorScheme.primary),
                    foregroundColor: WidgetStatePropertyAll(checkAnswer == -1
                        ? Theme.of(context).colorScheme.onSurface
                        : Theme.of(context).colorScheme.onPrimary),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)))),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
