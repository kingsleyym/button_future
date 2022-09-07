import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/enitys/auth/id.dart';
import '../../domain/enitys/auth/user.dart';

extension FirebaseUserMapper on User {
  CustomUser toDomain() {
    return CustomUser(id: UniqueID.fromUniqueString(uid));
  }
}
