import 'Payment.dart';
import 'PaymentValidationException.dart';
import 'PaymentValidator.dart';

class PaymentProcessor {
  void processPayment(Payment payment, List<PaymentValidator> validators) {
    for (var validator in validators) {
      if (!validator.validatePayment(payment)) {
        throw PaymentValidationException(
            'Pagamento inválido: ${validator.errorMessage}');
      }
    }

    // Lógica para processar o pagamento
    // ...
    print('LISKOV - is done');
  }
}
