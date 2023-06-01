import 'Payment.dart';
import 'PaymentValidator.dart';

class CustomerNameValidator implements PaymentValidator {
  @override
  bool validatePayment(Payment payment) {
    if (payment.customerName.isNotEmpty) {
      return true;
    } else {
      throw Exception('O nome do cliente não pode estar vazio.');
    }
  }
}
