import 'Payment.dart';
import 'PaymentValidator.dart';

class CreditCardValidator implements PaymentValidator {
  @override
  bool validatePayment(Payment payment) {
    return payment.creditCardNumber.length == 16;
  }

  @override
  String get errorMessage {
    return 'O número do cartão de crédito deve ter 16 dígitos.';
  }
}