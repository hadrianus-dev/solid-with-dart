import 'AmountValidator.dart';
import 'CreditCardValidator.dart';
import 'CustomerNameValidator.dart';
import 'Payment.dart';
import 'PaymentValidator.dart';
import 'PaymentProcessor.dart';

void main() {
  Payment payment = Payment('123456', 100.0, 'John Doe', '1234567890123456');

  /// Creating a list of validators for a payment object. The validators are instances of classes that
  /// implement the `PaymentValidator` interface, which defines a method to validate a payment object.
  /// The `AmountValidator`, `CustomerNameValidator`, and `CreditCardValidator` classes are examples of
  /// such validators. The list is then passed to a `PaymentProcessor` object to validate the payment
  /// before processing it.
  List<PaymentValidator> validators = [
    AmountValidator(),
    CustomerNameValidator(),
    CreditCardValidator(),
  ];

  PaymentProcessor processor = PaymentProcessor();
  processor.processPayment(payment, validators);
}
