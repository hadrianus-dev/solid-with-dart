import 'Payment.dart';
import 'PaymentValidator.dart';

class AmountValidator implements PaymentValidator {
  @override
  bool validatePayment(Payment payment) {
    return payment.amount > 0;
  }

  @override
  String get errorMessage {
    return 'O valor do pagamento deve ser maior que zero.';
  }
}