import 'package:LinguaQuest/core/models/avatarModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../components/bottomSheetAvatar.dart';
import '../../core/utils/cubit/current_avatar_cubit.dart';
import '../../core/utils/toastShow.dart';

CurrentAvatarCubit currentAvatarCubit = CurrentAvatarCubit();

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        BlocProvider(
          create: (context) => currentAvatarCubit,
          child: BlocBuilder<CurrentAvatarCubit, AvatarModel>(
            builder: (context, state) {
              return Container(
                height: 200,
                // color: Colors.gr,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20))),
                            elevation: 10,
                            context: context,
                            builder: (BuildContext context) {
                              return const BottomSheetAvatar();
                            });
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          state.url_avatar,
                          height: 150,
                          width: 150,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Max, 20",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    )
                  ],
                ),
              );
            },
          ),
        ),
        ListTile(
          onTap: () {
            toastShow(context);
          },
          title: Text(
            "Statistics",
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
        ListTile(
          onTap: () {
            toastShow(context);
          },
          title: Text(
            "Languages",
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
        ListTile(
          onTap: () {
            toastShow(context);
          },
          title: Text(
            "My bookmates",
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
        ListTile(
          onTap: () {
            toastShow(context);
          },
          title: Text(
            "My achievements",
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
        ListTile(
          onTap: () {
            toastShow(context);
          },
          title: Text(
            "Settings",
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
      ],
    );
  }
}
