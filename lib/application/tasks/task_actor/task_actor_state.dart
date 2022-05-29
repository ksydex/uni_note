part of 'task_actor_cubit.dart';

@freezed
class TaskActorState with _$TaskActorState{
  const factory TaskActorState.initial() = Initial;
  const factory TaskActorState.actionInProgress() = ActionInProgress;
  const factory TaskActorState.deleteSuccess() = DeleteSuccess;
  const factory TaskActorState.deleteFailure(String message) = DeleteFailure;
}


