import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum TaskStatusFilter {
  all,
  waiting,
  inProgress,
  done,
}
