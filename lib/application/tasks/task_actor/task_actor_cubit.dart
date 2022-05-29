import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_list/domain/tasks/task.dart';
import 'package:todo_list/infrastructure/tasks/task_repository.dart';

part 'task_actor_state.dart';
part 'task_actor_cubit.freezed.dart';

@injectable
class TaskActorCubit extends Cubit<TaskActorState> {
  final TaskRepository _repository;

  TaskActorCubit(this._repository) : super(const TaskActorState.initial());

  Future<void> delete(Task task) async {
    try{
      emit(const TaskActorState.actionInProgress());
      await _repository.delete(task);
      emit(const TaskActorState.deleteSuccess());
    } on Exception catch (e) {
      emit(TaskActorState.deleteFailure("Fail to delete task $task: $e"));
    }
  }
}
