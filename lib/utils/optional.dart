class Optional<T> {
  final bool isValid;
  final T? _value;

  // Cast away nullability if T is non-nullable.
  T get value => _value as T;

  const Optional()
      : isValid = false,
        _value = null;
  const Optional.value(this._value) : isValid = true;
}
