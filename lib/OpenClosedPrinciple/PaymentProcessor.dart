import 'Payment.dart';
import 'PaymentValidator.dart';

/// The PaymentProcessor class processes a payment by validating it with a list of PaymentValidators and
/// then executing the payment if it passes validation.
class PaymentProcessor {
  void processPayment(Payment payment, List<PaymentValidator> validators) {
    for (var validator in validators) {
      if (!validator.validatePayment(payment)) {
        // Lidar com o pagamento inválido
        return;
      }
    }

    // Lógica para processar o pagamento
    print('OCP - is done');
  }
}
