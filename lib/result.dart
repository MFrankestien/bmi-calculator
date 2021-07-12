import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final String bmi, resultText, interpretation;


  ResultsPage({
    required this.bmi,
    required this.resultText,
    required this.interpretation,

  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Text('Your Result', style:TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              )),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color(0xFF1D1F33),
                borderRadius: BorderRadius.circular(6.0),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: TextStyle(
                      color: Color(0xFF22E67B),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(bmi, style: TextStyle(
                    fontSize: 80.0,
                    fontWeight: FontWeight.bold,
                  )),
                  Column(
                    children: <Widget>[
                      Text('Normal BMI range:', style: TextStyle(
                        fontSize: 22.0,
                        color: Color(0xFF878893),
                      )),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        '18.5 - 25 kg/m²',
                        style: TextStyle(fontSize: 20.0),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      interpretation,
                      style: TextStyle(
                        color: Color(0xFF22E67B),
                        fontSize: 20.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 16.0),
              width: double.infinity,
              height: 72.0,
              child: Center(
                child: Text(
    'RE-CALCULATE YOUR BMI',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                  ),
                ),
              ),
            )
    ),

        ],
      ),
    );
  }
}