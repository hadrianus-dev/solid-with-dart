// Implementação da validação do nome do cliente
import 'ErrorablePaymentValidator.dart';
import 'Payment.dart';

class CustomerNameValidator implements ErrorablePaymentValidator {
  @override
  bool validatePayment(Payment payment) {
    return payment.customerName.isNotEmpty;
  }

  @override
  String get errorMessage {
    return 'O nome do cliente não pode estar vazio.';
  }
}