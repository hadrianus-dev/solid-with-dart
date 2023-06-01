// Implementação da validação do nome do cliente
import 'Payment.dart';
import 'PaymentValidator.dart';

class CustomerNameValidator implements PaymentValidator {
  @override
  bool validatePayment(Payment payment) {
    return payment.customerName.isNotEmpty;
  }
}