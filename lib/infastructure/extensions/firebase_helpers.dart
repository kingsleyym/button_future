import 'package:button_future/domain/repository/auth_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../core/errors/errors.dart';
import '../../injecton.dart';

extension FirestoreExt on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = sl<AuthRepository>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());

    return FirebaseFirestore.instance.collection("users").doc(user.id.value);
  }

  Future<DocumentReference> newsDocument() async {
    return FirebaseFirestore.instance.collection("news").doc();
  }
}

extension DocumentReferenceExt on DocumentReference {
  CollectionReference<Map<String, dynamic>> get todoCollection =>
      collection("todo");
}
