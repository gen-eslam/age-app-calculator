import 'package:age_calculator/matrial/age_calc/resaults.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AgeCalculator extends StatefulWidget {
  @override
  _AgeCalculatorState createState() => _AgeCalculatorState();
}

class _AgeCalculatorState extends State<AgeCalculator> {
  var control = TextEditingController();
  late var year ;


  late var result =DateTime.now().year - year;

  var formKey =GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Center(
          child: Stack(

            children: [
              Text(
                'AGE Calculator',
                style: TextStyle(
                    fontSize: 35,
                    fontStyle: FontStyle.italic,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Colors.red,


                ),
              ),
              Text(
                'AGE Calculator',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                  fontSize: 35,


                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children:
        [
          Expanded(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                Stack(


                  children: [
                    Text(
                      'Enter Your Year',
                      style: TextStyle(
                        fontSize: 35,
                        fontStyle: FontStyle.italic,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 6
                          ..color = Colors.red,


                      ),
                    ),
                    Text(
                      'Enter Your Year',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontSize: 35,


                      ),
                    ),
                  ],
                ),
                Form(
                  key:formKey ,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      controller: control ,
                      textAlign: TextAlign.center,

                      decoration: InputDecoration(



                        labelText: 'Enter your year',
                        labelStyle: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                          gapPadding: 10,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      validator: (age)
                      {
                        if(age!.isEmpty)
                        {
                         return 'plz enter your year';
                        }

                      },


                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(

            width: double.infinity,
            height: 60,
            color:Colors.red,
            child: TextButton(


                onPressed: ()
                {
                  year =control.text;
                  if(formKey.currentState!.validate())
                  {
                    result=DateTime.now().year - int.parse(year);

                    Navigator.push(context,
                      MaterialPageRoute(
                        builder:(context)=>ResultScreen(result),
                      ),
                    );
                  }

                },
                child: Text(
                  'Calculator',
                  style: TextStyle
                    (
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                  ),
                ),
            ),
          ),

        ],
      ),

    );
  }

}
