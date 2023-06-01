// ignore_for_file: file_names, unused_import

import 'package:solid_with_dart/SinglePrincipleResponsability/Payment.dart';
import 'package:dartx/dartx.dart';

class PaymentValidator {
  bool validatePayment(Payment payment) {
    if (isNumeric(payment.paymentId)) {
      return true;
    }
    if (payment.amount <= 0) {
      return false;
    }
    if (payment.customerName.isEmpty) {
      return false;
    }
    if (payment.creditCardNumber.length != 16) {
      return false;
    }
    return true;
  }

  bool isNumeric(String paymentId) {
    return num.tryParse(paymentId) != null;
  }
}
