import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator_app/iconContent.dart';
import 'package:bmi_calculator_app/ReuseableCard.dart';
import 'package:bmi_calculator_app/results.dart';
import 'package:bmi_calculator_app/calculatorbrain.dart';

const ContainerColor = Color(0xFF1D1E33);
const inActiveColor = Color(0xFF111328);
const BottomContainerColor = Color(0xFFEB1555);
int height = 180;
int weight = 35;
int age = 20;

enum Gender
{
  male,
  female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;

  // Color maleCardColor = inActiveColor;
  // Color femaleCardColor = inActiveColor;
  //
  // void upDateColor(Gender SelectedGender)
  // {
  //   //male pressed
  //   if (SelectedGender == Gender.male)
  //     {
  //       if (maleCardColor == inActiveColor)
  //         {
  //           maleCardColor = ContainerColor;
  //           femaleCardColor = inActiveColor;
  //         }
  //       else
  //         {
  //           maleCardColor = inActiveColor;
  //         }
  //     }
  //   //female pressed
  //   if (SelectedGender == Gender.female)
  //   {
  //     if (femaleCardColor == inActiveColor)
  //     {
  //       femaleCardColor = ContainerColor;
  //       maleCardColor = inActiveColor;
  //     }
  //     else
  //     {
  //       femaleCardColor = inActiveColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI App"),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  //Male
                  Expanded(
                    child: ReuseableCard(
                      tapped: (){
                       setState(() {
                         selectedGender = Gender.male;
                       });
                      },
                      colour: selectedGender == Gender.male ? ContainerColor : inActiveColor,
                      cardChild: iconContent(
                        name: "MALE",
                        icon: FontAwesomeIcons.male,
                      ),
                    ),
                  ),
                  //female
                  Expanded(
                    child: ReuseableCard(
                      tapped: (){
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female ? ContainerColor : inActiveColor,
                      cardChild: iconContent(
                        name: "FEMALE",
                        icon: FontAwesomeIcons.female,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ReuseableCard(
                colour: ContainerColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "HEIGHT",
                      style: TextStyle(
                      fontSize: 18.0,
                      color: Color(0xFF8D8E89)
                    ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "cm",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF8D8E89)
                          ),
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Colors.white
                      ),
                      child: Slider(
                        min: 120,
                        max: 220,
                        // activeColor: Color(0xFFEB1555),
                        inactiveColor: Color(0xFF8D8E98),
                        value: height.toDouble(),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      )
                    )
                  ],
                ),
              ),
            ),
            // nichena 2 container
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReuseableCard(
                      colour: ContainerColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("WEIGHT",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF8D8E89)
                            ),
                          ),
                          Text(
                            weight.toString(),
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.w900,
                                color: Colors.white
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                tappedTheButton: (){
                                  setState(() {
                                    weight --;
                                  });
                                },
                              ),
                              SizedBox(width: 15),
                              RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                tappedTheButton: () {
                                    setState(() {
                                      weight ++;
                                    });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReuseableCard(
                      colour: ContainerColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("AGE",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF8D8E89)
                            ),
                          ),
                          Text(
                            age.toString(),
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.w900,
                                color: Colors.white
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                tappedTheButton: (){
                                  setState(() {
                                    age --;
                                  });
                                },
                              ),
                              SizedBox(width: 15),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                tappedTheButton: () {
                                  setState(() {
                                    age ++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            BottomButton(label: "CALCULATE", tapMe: () {
              CalculatorBrain cal = CalculatorBrain(height: height, weight: weight);
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ResultsPage(
                  bmiResults: cal.calculateBMI(),
                  resultText: cal.getResults(),
                  interpretation: cal.getInterpretation(),
                );
              }));
            },)
          ],
        ));
  }
}

class BottomButton extends StatelessWidget {

  final String label;
  final Function tapMe;

  BottomButton({this.label, this.tapMe});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapMe,
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            // color: Color(0xFFEB1555),
            child: Center(
              child: Text(label,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),
              ),
            ),
            color: BottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 50,
          ),
        ),
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {

  RoundIconButton({this.icon, this.tappedTheButton});

  final IconData icon;
  final Function tappedTheButton;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: tappedTheButton,
      elevation: 0.6,
      constraints: BoxConstraints.tightFor(
        width: 45,
        height: 45
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}

