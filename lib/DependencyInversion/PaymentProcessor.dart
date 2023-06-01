// Classe que utiliza a interface de validação de pagamento
import 'Payment.dart';
import 'PaymentValidator.dart';

class PaymentProcessor {
  final List<PaymentValidator> validators;

  PaymentProcessor(this.validators);

  bool validatePayment(Payment payment) {
    for (var validator in validators) {
      if (!validator.validatePayment(payment)) {
        return false;
      }
    }
    return true;
  }

  void processPayment(Payment payment) {
    if (validatePayment(payment)) {
      // Lógica para processar o pagamento
      print('Pagamento processado com sucesso.');
    } else {
      // Lógica para tratamento de erro de validação do pagamento
      print('Erro na validação do pagamento.');
    }
  }
}