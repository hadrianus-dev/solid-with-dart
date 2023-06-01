abstract class PaymentValidator {
  bool validatePayment(Payment payment);
}

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

class CreditCardValidator implements PaymentValidator {
  @override
  bool validatePayment(Payment payment) {
    if (payment.creditCardNumber.length == 16) {
      return true;
    } else {
      throw Exception('O número do cartão de crédito deve ter 16 dígitos.');
    }
  }
}

class Payment {
  String paymentId;
  double amount;
  String customerName;
  String creditCardNumber;
  // ...

  Payment(
      this.paymentId, this.amount, this.customerName, this.creditCardNumber);
}

class PaymentProcessor {
  void processPayment(Payment payment, List<PaymentValidator> validators) {
    for (var validator in validators) {
      if (!validator.validatePayment(payment)) {
        // Lidar com o pagamento inválido
        return;
      }
    }

    // Lógica para processar o pagamento
    print('is done');
  }
}

void main() {
  Payment payment = Payment('123456', 100.0, 'John Doe', '1234567890123456');

  List<PaymentValidator> validators = [
    AmountValidator(),
    CustomerNameValidator(),
    CreditCardValidator(),
  ];

  PaymentProcessor processor = PaymentProcessor();
  processor.processPayment(payment, validators);
}
