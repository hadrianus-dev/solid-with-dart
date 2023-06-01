// Implementação da validação do número do cartão de crédito
import 'ErrorablePaymentValidator.dart';
import 'Payment.dart';

class CreditCardValidator implements ErrorablePaymentValidator {
  @override
  bool validatePayment(Payment payment) {
    return payment.creditCardNumber.length == 16;
  }

  @override
  String get errorMessage {
    return 'O número do cartão de crédito deve ter 16 dígitos.';
  }
}