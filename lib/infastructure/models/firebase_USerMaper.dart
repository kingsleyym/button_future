import 'package:button_future/domain/enitys/id.dart';
import 'package:button_future/domain/enitys/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseUserMapper on User {
  CustomUser toDomain() {
    return CustomUser(id: UniqueID.fromUniqueString(uid));
  }
}
