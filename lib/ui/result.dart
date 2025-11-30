sealed class Result {}

base class Ok<T> extends Result {
  final T value;

  Ok(this.value);
}

base class Failure extends Result {
  final Exception value;

  Failure(this.value);
}

base class Progress extends Result {}
