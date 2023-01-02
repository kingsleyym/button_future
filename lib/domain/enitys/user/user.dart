import 'package:button_future/domain/enitys/auth/id.dart';

class User {
  final UniqueID id;
  final String username;
  final String number;
  final String image;
  final String bio;

  final bool private;
  User({
    required this.id,
    required this.username,
    required this.number,
    required this.image,
    required this.bio,
    required this.private,
  });

  User copyWith({
    UniqueID? id,
    String? username,
    String? number,
    String? image,
    String? bio,
    bool? private,
  }) {
    return User(
      id: id ?? this.id,
      username: username ?? this.username,
      number: number ?? this.number,
      image: image ?? this.image,
      bio: bio ?? this.bio,
      private: private ?? this.private,
    );
  }
}
