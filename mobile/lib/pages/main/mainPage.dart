import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            color: Colors.deepPurpleAccent.shade200,
            child: SizedBox(
                height: 100,
                width: context.width,
                child: const Center(
                  child: Text(
                    "Карточки слов",
                    style: TextStyle(fontSize: 32),
                  ),
                )),
          ),
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
    );
  }
}
