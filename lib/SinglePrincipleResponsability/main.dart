import 'Payment.dart';
import 'PaymentProcessor.dart';
import 'PaymentValidator.dart';

void main() {
  /**Create a Payment */
  Payment payment = Payment('123456', 100.0, 'John Doe', '1234567890');
  /**Validate the Payment */
  PaymentValidator validator = PaymentValidator();
  bool isValid = validator.validatePayment(payment);
  /** Process Payment */
  if (isValid) {
    PaymentProcessor processor = PaymentProcessor();
    processor.toProcess(payment);
  } else {
    // Lidar com o pagamento inválido
  }
}
