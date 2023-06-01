// Implementação da validação de valor do pagamento
import 'Payment.dart';
import 'PaymentValidator.dart';

class AmountValidator implements PaymentValidator {
  @override
  bool validatePayment(Payment payment) {
    return payment.amount > 0;
  }
}