import 'package:flutter/material.dart';
const Color _customColor = Color.fromARGB(255, 17, 140, 241);
const List<Color> _colorThemes = [
_customColor,
Colors.yellow,
Colors.grey,
Colors.orange,
Colors.purple
];

class AppTheme {
  final int  selectedColor;

  AppTheme({
    this.selectedColor = 0
  }): assert(selectedColor >= 0, 'El numero de tema debe de ser entre 0 y ${_colorThemes.length}');
  ThemeData theme() {
      return ThemeData(useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      brightness:  Brightness.light
      );
      
  }

}