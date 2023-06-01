import 'Payment.dart';

abstract class PaymentValidator {
  bool validatePayment(Payment payment);
}
