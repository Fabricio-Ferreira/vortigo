class UserEntity {
  final String login;
  final int id;
  final String avatarUrl;
  final String name;
  final int publicRepos;
  final int followers;
  final int following;

  UserEntity({
    required this.login,
    required this.id,
    required this.avatarUrl,
    required this.name,
    required this.publicRepos,
    required this.followers,
    required this.following,
  });

  UserEntity copyWith({
    String? login,
    int? id,
    String? avatarUrl,
    String? name,
    int? publicRepos,
    int? followers,
    int? following,
  }) =>
      UserEntity(
        login: login ?? this.login,
        id: id ?? this.id,
        avatarUrl: avatarUrl ?? this.avatarUrl,
        name: name ?? this.name,
        publicRepos: publicRepos ?? this.publicRepos,
        followers: followers ?? this.followers,
        following: following ?? this.following,
      );
}
