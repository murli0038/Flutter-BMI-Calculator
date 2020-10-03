import 'dart:math';

import 'main.dart';

class CalculatorBrain
{
  final int height;
  final int weight;
  
  double _bmi;

  CalculatorBrain({this.weight, this.height});

  String calculateBMI()
  {
    _bmi = weight / pow(height/ 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults()
  {
    if (_bmi > 25)
      {
        return "Overweight";
      }
    else if (_bmi > 18.5)
      {
        return "Normal";
      }
    else
      {
        return "Underweight";
      }
  }

  String getInterpretation()
  {
    if (_bmi > 25)
    {
      return "You have a higher than the normal body weight. Try to exercise more !";
    }
    else if (_bmi > 18.5)
    {
      return "You have normal body. Great Job !";
    }
    else
    {
      return "You have a lower than the normal body weight. You car eat a bite more !";
    }
  }
}