class AppError {
  const AppError({required this.message, this.cause});

  final String message;
  final Object? cause;

  @override
  String toString() => 'AppError(message: $message, cause: $cause)';
}
