import 'dart:math';

import 'package:flutter/material.dart';



class CalculatorBrain {
  double _bmi;

  String getBMI(height, weight) {
    _bmi = weight / pow(height / 100.0, 2);

    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 30) {
      return 'Obese';
    }
    if (_bmi > 25) {
      return 'Overweight';
    }
    if (_bmi > 18.5) {
      return 'Normal';
    }
    return 'Underweight';
  }

  String getInterpretation() {
    if (_bmi > 30) {
      return 'You have a severely high body weight. Change your nourishment drastically!';
    }
    if (_bmi > 25) {
      return 'You have a higher than normal body weight. Try to exercise more!';
    }
    if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    }
    return 'You have a lower than normal body weight. You can eat a bit more!';
  }

  Color getResultColor() {
    if (_bmi > 30) {
      return Colors.redAccent;
    }
    if (_bmi > 25) {
      return Colors.yellowAccent;
    }
    if (_bmi > 18.5) {
      return Color(0xFF22E67B);
    }
    return Colors.purpleAccent;
  }
}