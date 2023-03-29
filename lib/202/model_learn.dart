// ignore_for_file: public_member_api_docs, sort_constructors_first
class PostModel {
  int? userId;
  int? id;
  String? title;
  String? body;
}

class PostModel2 {
  int userId;
  int id;
  String title;
  String body;

  PostModel2(this.userId, this.id, this.title, this.body);
}

class PostModel3 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel3(this.userId, this.id, this.title, this.body);
}

class PostModel4 {
  final int userId;
  final int id;
  final String title;
  final String body;
  PostModel4({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });
}

class PostModel5 {
  final int _userId;
  final int _id;
  final String _title;
  final String _body;

  PostModel5(
      {required int userId,
      required int id,
      required String title,
      required String body})
      : _userId = userId,
        _id = id,
        _title = title,
        _body = body;
}

class PostModel6 {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  PostModel6({this.userId, this.id, this.title, this.body});

  PostModel6 copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return PostModel6(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }
}
