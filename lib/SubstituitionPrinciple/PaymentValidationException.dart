class PaymentValidationException implements Exception {
  final String message;

  PaymentValidationException(this.message);

  @override
  String toString() {
    return 'PaymentValidationException: $message';
  }
}
