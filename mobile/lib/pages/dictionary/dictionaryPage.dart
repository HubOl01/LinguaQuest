import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

import '../../core/data/cubit/dictionaries_cubit.dart';
import '../../core/models/dictionaryModel.dart';
import 'dictionaryEditPage.dart';

class DictionaryPage extends StatefulWidget {
  const DictionaryPage({super.key});

  @override
  State<DictionaryPage> createState() => _DictionaryPageState();
}

class _DictionaryPageState extends State<DictionaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dictionary'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(DictionaryEditorPage());
        },
        child: const Icon(Icons.edit),
      ),
      body: BlocBuilder<DictionariesCubit, List<DictionaryModel>>(
        builder: (context, dictionaries) {
          if (dictionaries.isEmpty) {
            return const Center(child: Text('No words in dictionary'));
          }
          return ListView.builder(
            shrinkWrap: true,
            itemCount: dictionaries.length,
            itemBuilder: (context, index) {
              final dictionary = dictionaries[index];
              return Slidable(
                endActionPane: ActionPane(motion: ScrollMotion(), children: [
                  SlidableAction(
                    autoClose: true,
                    onPressed: (context) async {
                      Get.to(DictionaryEditorPage(
                        dictionaryModel: dictionary,
                      ));
                    },
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Theme.of(context).colorScheme.onPrimary,
                    icon: Icons.edit,
                    label: 'Поделиться',
                  ),
                  SlidableAction(
                    autoClose: true,
                    onPressed: (context) {
                      context
                          .read<DictionariesCubit>()
                          .deleteDictionary(dictionary.idDictionary!);
                    },
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Удалить',
                  ),
                ]),
                child: ListTile(
                  onTap: () => showDialog(
                      context: context,
                      builder: (context) => Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 200,
                                width: context.width,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    dictionary.content == null
                                        ? const SizedBox()
                                        : Text(
                                            dictionary.content.toUpperCase(),
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold),
                                          ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      dictionary.transcription!,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    dictionary.translate == null
                                        ? const SizedBox()
                                        : Text(
                                            dictionary.translate,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 24,
                                            ),
                                          ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    dictionary.example == null
                                        ? const SizedBox()
                                        : Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.0),
                                            child: Text(
                                              dictionary.example!,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 16),
                                            ),
                                          ),
                                  ],
                                ),
                              ),
                            ),
                          )),
                  title: Text(dictionary.content),
                  subtitle: Text(dictionary.translate),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
