// Interface para validação de pagamento com mensagem de erro
import 'PaymentValidator.dart';

abstract class ErrorablePaymentValidator extends PaymentValidator {
  String get errorMessage;
}