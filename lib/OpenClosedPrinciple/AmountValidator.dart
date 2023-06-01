import 'Payment.dart';
import 'PaymentValidator.dart';

class AmountValidator implements PaymentValidator {
  @override
  bool validatePayment(Payment payment) {
    if (payment.amount > 0) {
      return true;
    } else {
      throw Exception('O valor do pagamento deve ser maior que zero.');
    }
  }
}
