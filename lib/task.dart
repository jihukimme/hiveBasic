import 'package:hive/hive.dart';
part 'task.g.dart';

@HiveType(typeId: 0)
class Task extends HiveObject {
  @HiveField(0)
  final String title;

  @HiveField(1)
  bool finished;

  Task(this.title, {this.finished = false});
}


/*
/// title : "Pugh Pittman"
/// finished : false

class Task {
  Task({
    required String title,
  })  : finished = false,
        _title = title;

  Task.fromJson(dynamic json)
      : _title = json['title'] ?? "",
        finished = json['finished'] ?? false;

  String _title;
  bool finished;

  String get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['finished'] = finished;
    return map;
  }
}
*/