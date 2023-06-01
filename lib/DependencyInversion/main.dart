import 'AmountValidator.dart';
import 'CreditCardValidator.dart';
import 'CustomerNameValidator.dart';
import 'Payment.dart';
import 'PaymentProcessor.dart';
import 'PaymentValidator.dart';

void main() {
  Payment payment = Payment('123456', 100.0, 'John Doe', '1234567890123456');

  List<PaymentValidator> validators = [
    AmountValidator(),
    CustomerNameValidator(),
    CreditCardValidator(),
  ];

  PaymentProcessor processor = PaymentProcessor(validators);
  processor.processPayment(payment);
}