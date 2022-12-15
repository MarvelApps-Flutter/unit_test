import 'package:flutter_test/flutter_test.dart';
import 'package:loginunittest/constant/constant_value.dart';
import 'package:loginunittest/helper/email_validation.dart';
import 'package:loginunittest/helper/password_validation.dart';

void main() {
  test('empty email returns error string', () {
    final result = EmailFieldValidator.validate('');
    expect(result, ConstantValue.EMAIL_EMPTY);
  });

  test('non-empty email returns null', () {
    final result = EmailFieldValidator.validate('email');
    expect(result, null);
  });

  test('empty password returns error strings', () {
    final result = PasswordFieldValidator.validate('');
    expect(result, ConstantValue.PASSWORD_EMPTY);
  });

  test('non-empty password returns null', () {
    final result = PasswordFieldValidator.validate('password');
    expect(result, null);
  });
}
