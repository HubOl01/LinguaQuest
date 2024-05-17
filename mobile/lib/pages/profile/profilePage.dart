import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 200,
          color: Colors.grey.shade200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://ya.ru/images/search?img_url=https%3A%2F%2Fsun1-98.userapi.com%2Fs%2Fv1%2Fig2%2FLfnoBVxZojzcr9YVqswNnZXMXj630tCPHJUdi94oKLPCrAyybhv-2c0M9in5Pxqq0Rli1dkZVNJlMc3ySF5pLGey.jpg%3Fsize%3D1800x1800%26quality%3D95%26crop%3D0%2C0%2C1800%2C1800%26ava%3D1&lr=5&pos=20&rpt=simage&text=аватарка",
                height: 50,
                width: 50,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Max, 20",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Statistics",
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Languages",
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "My bookmates",
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "My achievements",
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Settings",
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}