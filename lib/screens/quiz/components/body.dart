import 'package:flutter/material.dart';

import 'package:key2iqround1/size_config.dart';
import 'package:toast/toast.dart';

import '../../../quizAPI.dart';

class Body extends StatefulWidget {

  @override
  _BodyState createState() => _BodyState();
}
class _BodyState extends State<Body> {


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getQuestions(),
      builder: (context, questionData) {
        if(questionData.hasData) {
          print("Data ${questionData.data}");
          return mainBody(questionData.data);
        }
        return Center(child: CircularProgressIndicator());
      }
    );
  }
}

class mainBody extends StatefulWidget {
  var questionData;
  mainBody(this.questionData);
  @override
  _mainBodyState createState() => _mainBodyState();
}

class _mainBodyState extends State<mainBody> {

  int _radioValue = 0;
  bool token=false;
  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 0:
          break;
        case 1:
          break;
        case 2:
          break;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
      child: Column(
        children: [

          Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    "https://thehill.com/sites/default/files/ca_pollution_41320istock_0.jpg",
                    width: 40, height: 40, fit: BoxFit.fill,)),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("LOGIC WARMUPS", style: TextStyle(
                          fontSize: 14),
                      ),
                      Text(
                        'Logic puzzles - Intermediate \nWarmup',
                        style: new TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 16.0,
                            color: Colors.black
                        ),
                      ),
                    ]
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          new Text(
            widget.questionData['results'][0]['question'],
            style: new TextStyle(
                fontSize: 18.0,
                color: Colors.black
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              thickness: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: [
                    Transform.scale(
                      scale: 1.3,
                      child: new Radio(
                        activeColor: Colors.black,
                        value: 0,
                        groupValue: _radioValue,
                        onChanged: _handleRadioValueChange,
                      ),
                    ),
                    new Text(
                      widget.questionData['results'][0]['incorrect_answers'][1],
                      style: new TextStyle(
                          fontSize: 16.0, color: Colors.black),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Transform.scale(
                      scale: 1.3,
                      child: new Radio(
                        activeColor: Colors.black,
                        value: 1,
                        groupValue: _radioValue,
                        onChanged: _handleRadioValueChange,
                      ),
                    ),
                    new Text(
                      widget.questionData['results'][0]['correct_answer'],
                      style: new TextStyle(
                          fontSize: 16.0,
                          color: Colors.black
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Transform.scale(
                      scale: 1.3,
                      child: new Radio(
                        activeColor: Colors.black,
                        value: 2,
                        groupValue: _radioValue,
                        onChanged: _handleRadioValueChange,
                      ),
                    ),
                    new Text(
                      widget.questionData['results'][0]['incorrect_answers'][0],
                      style: new TextStyle(
                          fontSize: 16.0, color: Colors.black),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Transform.scale(
                      scale: 1.3,
                      child: new Radio(
                        activeColor: Colors.black,
                        value: 3,
                        groupValue: _radioValue,
                        onChanged: _handleRadioValueChange,
                      ),
                    ),
                    new Text(
                      widget.questionData['results'][0]['incorrect_answers'][2],
                      style: new TextStyle(
                          fontSize: 16.0, color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: (){
                      if(_radioValue==1){
                        setState(() {
                          token=true;
                        });
                      }
                      else{
                        setState(() {
                          token=false;
                        });
                      }
                      token?Toast.show("CORRECT", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM,):Toast.show("WRONG", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM,);
                  },
                  child: Container(
                    width: SizeConfig.screenWidth,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: token?Colors.black:Colors.grey,
                    ),
                    child:
                    Center(
                        child: Text(token?"Continue":"Submit", style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),)
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
