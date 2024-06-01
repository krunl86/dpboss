import 'package:flutter/services.dart';

class DigitAndHyphenInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final String newText = newValue.text;
    if (newText.isEmpty) {
      return newValue;
    }
    final StringBuffer filtered = StringBuffer();
    for (int i = 0; i < newText.length; i++) {
      final String character = newText[i];
      if (RegExp(r'[0-9-]').hasMatch(character)) {
        filtered.write(character);
      }
    }
    final String filteredText = filtered.toString();
    return newValue.copyWith(
      text: filteredText,
      selection: TextSelection.collapsed(offset: filteredText.length),
    );
  }
}
