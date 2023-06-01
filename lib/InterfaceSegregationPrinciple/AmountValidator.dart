// Implementação da validação de valor do pagamento
import 'ErrorablePaymentValidator.dart';
import 'Payment.dart';

class AmountValidator implements ErrorablePaymentValidator {
  @override
  bool validatePayment(Payment payment) {
    return payment.amount > 0;
  }

  @override
  String get errorMessage {
    return 'O valor do pagamento deve ser maior que zero.';
  }
}