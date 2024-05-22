import 'package:LinguaQuest/core/models/dictionaryModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../core/data/cubit/dictionaries_cubit.dart';

class DictionaryEditorPage extends StatefulWidget {
  DictionaryModel? dictionaryModel;
  DictionaryEditorPage({super.key, this.dictionaryModel});

  @override
  State<DictionaryEditorPage> createState() => _DictionaryEditorPageState();
}

class _DictionaryEditorPageState extends State<DictionaryEditorPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _contentController = TextEditingController();
  TextEditingController _translateController = TextEditingController();
  TextEditingController _transcriptionController = TextEditingController();
  TextEditingController _exampleController = TextEditingController();
  @override
  void initState() {
    if (widget.dictionaryModel != null) {
      _contentController =
          TextEditingController(text: widget.dictionaryModel!.content);
      _translateController =
          TextEditingController(text: widget.dictionaryModel!.translate);
      _transcriptionController =
          TextEditingController(text: widget.dictionaryModel!.transcription);
      _exampleController =
          TextEditingController(text: widget.dictionaryModel!.example);
    }
    super.initState();
  }
  // final _audiofileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.dictionaryModel != null
            ? Text('Update Word')
            : Text('Add Word'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _contentController,
                decoration: InputDecoration(labelText: 'Content'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter content';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _translateController,
                decoration: InputDecoration(labelText: 'Translate'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter translation';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _transcriptionController,
                decoration: InputDecoration(labelText: 'Transcription'),
              ),
              TextFormField(
                controller: _exampleController,
                // maxLength: null,
                maxLines: null,
                decoration: InputDecoration(labelText: 'Example'),
              ),
              const SizedBox(height: 20),
              // const Spacer(),
              Flexible(
                child: SizedBox(
                  width: context.width,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        // print(widget.dictionaryModel!.dateCreated);
                        if (widget.dictionaryModel != null) {
                          final dictionary = DictionaryModel(
                            idDictionary: widget.dictionaryModel!.idDictionary,
                            content: _contentController.text,
                            translate: _translateController.text,
                            transcription: _transcriptionController.text,
                            audiofile: widget.dictionaryModel!.audiofile,
                            example: _exampleController.text,
                            userId: widget.dictionaryModel!.userId,
                            dateCreated: widget.dictionaryModel!.dateCreated,
                          );
                          context
                              .read<DictionariesCubit>()
                              .updateDictionary(dictionary);
                        } else {
                          final dictionary = DictionaryModel(
                            content: _contentController.text,
                            translate: _translateController.text,
                            transcription: _transcriptionController.text,
                            audiofile: "",
                            example: _exampleController.text,
                            userId: 1,
                            dateCreated: DateTime.now(),
                          );
                          context
                              .read<DictionariesCubit>()
                              .addDictionary(dictionary);
                        }
                
                        Get.back();
                      }
                    },
                    child: widget.dictionaryModel != null
                        ? Text('Update Word')
                        : Text('Add Word'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _contentController.dispose();
    _translateController.dispose();
    _transcriptionController.dispose();
    _exampleController.dispose();
    super.dispose();
  }
}
