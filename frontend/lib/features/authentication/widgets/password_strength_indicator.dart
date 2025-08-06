import 'package:flutter/material.dart';

class PasswordStrengthIndicator extends StatelessWidget {
  final String password;

  const PasswordStrengthIndicator({
    super.key,
    required this.password,
  });

  String _getPasswordStrength() {
    if (password.isEmpty) {
      return 'Empty';
    } else if (password.length < 6) {
      return 'Weak';
    } else if (password.length < 8) {
      return 'Medium';
    } else {
      bool hasUppercase = password.contains(RegExp(r'[A-Z]'));
      bool hasDigits = password.contains(RegExp(r'[0-9]'));
      bool hasSpecialChars = password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));

      if (hasUppercase && hasDigits && hasSpecialChars) {
        return 'Strong';
      } else if ((hasUppercase && hasDigits) || (hasUppercase && hasSpecialChars) || (hasDigits && hasSpecialChars)) {
        return 'Good';
      } else {
        return 'Medium';
      }
    }
  }

  Color _getStrengthColor() {
    final strength = _getPasswordStrength();
    switch (strength) {
      case 'Strong':
        return Colors.green;
      case 'Good':
        return Colors.greenAccent;
      case 'Medium':
        return Colors.orange;
      case 'Weak':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  double _getStrengthLevel() {
    final strength = _getPasswordStrength();
    switch (strength) {
      case 'Strong':
        return 1.0;
      case 'Good':
        return 0.75;
      case 'Medium':
        return 0.5;
      case 'Weak':
        return 0.25;
      default:
        return 0.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Password Strength:',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 12,
              ),
            ),
            Text(
              _getPasswordStrength(),
              style: TextStyle(
                color: _getStrengthColor(),
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        LinearProgressIndicator(
          value: _getStrengthLevel(),
          backgroundColor: Colors.white10,
          color: _getStrengthColor(),
          minHeight: 5,
          borderRadius: BorderRadius.circular(10),
        ),
      ],
    );
  }
}
