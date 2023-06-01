import 'Payment.dart';
import 'PaymentValidator.dart';

class CreditCardValidator implements PaymentValidator {
  @override
  bool validatePayment(Payment payment) {
    if (payment.creditCardNumber.length == 16) {
      return true;
    } else {
      throw Exception('O número do cartão de crédito deve ter 16 dígitos.');
    }
  }
}
