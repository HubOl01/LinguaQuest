import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardWord extends StatelessWidget {
  String? content;
  final String transcription;
  String? translate;
  final String example;
  CardWord(
      {super.key,
      this.content,
      required this.transcription,
      this.translate,
      required this.example});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: context.width,
          width: context.width,
          child: Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                content == null
                    ? const SizedBox()
                    : Text(
                        content!.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  transcription,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                            fontSize: 18),
                ),
                const SizedBox(
                  height: 10,
                ),
                translate == null
                    ? const SizedBox()
                    : Text(
                        translate!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24,),
                      ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    example,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                              fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
