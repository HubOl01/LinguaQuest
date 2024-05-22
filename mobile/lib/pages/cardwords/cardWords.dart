import 'package:LinguaQuest/components/cardWord.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

import '../../core/data/words.dart';
import '../../core/models/word.dart';

class CardWords extends StatefulWidget {
  const CardWords({super.key});

  @override
  State<CardWords> createState() => _CardWordsState();
}

class _CardWordsState extends State<CardWords> {
  List<WordModel> futureWords = [];
  CardSwiperController controller = CardSwiperController();

  @override
  void initState() {
    super.initState();
    refreshData();
  }

  Future refreshData() async {
    futureWords = await fetchWords();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Word cards"),
      ),
      body: FutureBuilder(
          future: refreshData(),
          builder: (context, snapshot) {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: CardSwiper(
                      allowedSwipeDirection:
                          const AllowedSwipeDirection.symmetric(
                              horizontal: true),
                      controller: controller,
                      onUndo: _onUndo,
                      isLoop: true,
                      backCardOffset: const Offset(0, -30),
                      padding: const EdgeInsets.all(24.0),
                      cardsCount: futureWords.length,
                      numberOfCardsDisplayed: 3,
                      cardBuilder: (context, index, percentThresholdX,
                              percentThresholdY) =>
                          CardWord(
                        content: futureWords[index].content,
                        transcription: futureWords[index].transcription,
                        translate: futureWords[index].translate,
                        example: futureWords[index].examples,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // FloatingActionButton(
                        //   onPressed: controller.undo,
                        //   child: const Icon(Icons.rotate_left),
                        // ),
                        FloatingActionButton(
                          backgroundColor: Theme.of(context).colorScheme.primary,
                          onPressed: () =>
                              controller.swipe(CardSwiperDirection.left),
                          child: const Icon(Icons.keyboard_arrow_left),
                        ),
                        FloatingActionButton(
                          backgroundColor: Theme.of(context).colorScheme.primary,
                          onPressed: () =>
                              controller.swipe(CardSwiperDirection.right),
                          child: const Icon(Icons.keyboard_arrow_right),
                        ),
                      ],
                    ),
                  )
                ]);
          }),
    );
  }

  bool _onSwipe(
    int previousIndex,
    int? currentIndex,
    CardSwiperDirection direction,
  ) {
    return true;
  }

  bool _onUndo(
    int? previousIndex,
    int currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'The card $currentIndex was undod from the ${direction.name}',
    );
    return true;
  }
}
