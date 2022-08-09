import 'package:bmi_calculator/components/Buttom_Button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({this.resultText, this.interpretation, this.bmiResult});
  final String resultText;
  final String bmiResult;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kactivecolor,
        title: Text("BMI result"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(15.0),
                child: (Text(
                  "Your Result",
                  style: kResulttext,
                ))),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kactivecolor,
                card_child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: kResult,
                    ),
                    Text(
                      bmiResult,
                      style: kResultnumber,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kcalresult,
                    ),
                  ],
                ),
              )),
          (ButtomButton(
            Titletext: "Re-calculate",
            func: () {
              Navigator.pop(context);
            },
          )),
        ],
      ),
    );
  }
}
