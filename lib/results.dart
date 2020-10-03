import 'package:bmi_calculator_app/ReuseableCard.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator_app/input_page.dart';

class ResultsPage extends StatelessWidget {

  final String bmiResults;
  final String resultText;
  final String interpretation;

  ResultsPage({@required this.bmiResults, @required this.interpretation, @required this.resultText});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCLULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Text(
                "Your Result",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colour: ContainerColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Color(0xFF24D876),
                    ),
                  ),
                  Text(
                    bmiResults,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 100,
                    ),
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(label: "RE-CALCULATE", tapMe: (){
            Navigator.pop(context);
          },)
        ],
      ),

    );
  }
}
