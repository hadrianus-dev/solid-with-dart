// Implementação da validação do número do cartão de crédito
import 'Payment.dart';
import 'PaymentValidator.dart';

class CreditCardValidator implements PaymentValidator {
  @override
  bool validatePayment(Payment payment) {
    return payment.creditCardNumber.length == 16;
  }
}