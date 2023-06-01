import 'Payment.dart';
import 'PaymentValidator.dart';

class CustomerNameValidator implements PaymentValidator {
  @override
  bool validatePayment(Payment payment) {
    return payment.customerName.isNotEmpty;
  }

  @override
  String get errorMessage {
    return 'O nome do cliente não pode estar vazio.';
  }
}