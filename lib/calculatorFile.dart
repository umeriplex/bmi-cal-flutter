import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  CalculatorBrain(this.height, this.weight);

  double? _bmi;

  String calculation() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getRes() {
    if (_bmi! >= 25) {
      return 'Over Weight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'Under Weight';
    }
  }

  String getSug() {
    if (_bmi! >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi! > 18.5) {
      return 'You have a normal body weight. Good Job!!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

}
