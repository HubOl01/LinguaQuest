import 'package:LinguaQuest/core/data/avatars.dart';
import 'package:LinguaQuest/core/models/avatarModel.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'current_avatar_state.dart';

class CurrentAvatarCubit extends Cubit<AvatarModel> {
  CurrentAvatarCubit() : super(avatars.last);

  void changeAvatar(AvatarModel avatar) => emit(avatar);
}
