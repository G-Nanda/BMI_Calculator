
import 'dart:math';

class BMICalculator {
  final int height;
  final int weight;
  double _bmi=0.0;

  BMICalculator({
    required this.height,
    required this.weight,
  });

  String CalcualteBMI() {
    _bmi=weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if(_bmi < 18.5)
    {
      return 'UNDERWEIGHT';
    }
    else if(_bmi >= 18.5 && _bmi <= 24.9)
    {
      return 'NORMALWEIGHT';
    }
    else if(_bmi >= 25.0 && _bmi <= 29.9)
    {
      return 'OVERWEIGHT';
    }
    else
    {
      return 'OBESE';
    }
  }

  String getInterpretation() {
    if(_bmi < 18.5)
    {
      return 'You need to eat more and probably you need to exercise more;Consult Doctor for more Updates!';
    }
    else if(_bmi >= 18.5 && _bmi <= 24.9)
    {
      return 'You are in a Healthy Weight range;Follow your regular habits to stay in a Healthy Weight Forever';
    }
    else if(_bmi >= 25.0 && _bmi <= 29.9)
    {
      return 'You need to eat less and you need to exercise more;Be Cautious!';
    }
    else
    {
      return 'You are in a OBESE Weight range,You should eat less And should exercise regularly ;Consult Doctor for more Details';
    }
  }
}