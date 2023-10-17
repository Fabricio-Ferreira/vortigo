import 'package:vortigo/core/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel(
      {required super.login,
      required super.id,
      required super.avatarUrl,
      required super.name,
      required super.publicRepos,
      required super.followers,
      required super.following});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'login': login,
      'id': id,
      'avatarUrl': avatarUrl,
      'name': name,
      'publicRepos': publicRepos,
      'followers': followers,
      'following': following,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      login: map['login'] as String,
      id: map['id'] as int,
      avatarUrl: map['avatar_url'] as String,
      name: map['name'] as String,
      publicRepos: map['public_repos'] as int,
      followers: map['followers'] as int,
      following: map['following'] as int,
    );
  }
}
