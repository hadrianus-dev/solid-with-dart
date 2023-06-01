import 'Payment.dart';

abstract class PaymentValidator {
  Object? get errorMessage => null;

  bool validatePayment(Payment payment);
}