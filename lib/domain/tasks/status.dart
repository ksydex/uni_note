enum Status {
  waiting,
  inProgress,
  done,
}

Status getStatus(str) =>
  Status.values.firstWhere((element) => element.name == str);
