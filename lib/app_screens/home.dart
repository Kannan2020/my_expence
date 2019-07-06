import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          alignment: Alignment.center,
          color: Colors.lightBlueAccent,
          //margin: EdgeInsets.all(25.0),
          padding: EdgeInsets.only(top: 40.0, left: 15.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Money Money !!!',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 30.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Money Money !!!',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 30.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Money Money !!!',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 30.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Money Money',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 30.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
              MyImageAsserts(),
              MyButton(),
            ],
          )),
    );
  }
}
class MyImageAsserts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/pepsi.png');
    Image image = Image(
      image: assetImage,
      width: 200.0,
      height: 200.0,
    );
    return Container(
      child: image,
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
        onPressed: () =>getData(context)
        ,
        color: Colors.deepOrange,
        elevation: 6.0,
        child: Text(
          'Get Data',
          style: TextStyle(
              fontSize: 24.0, fontFamily: 'Roboto', color: Colors.white),
        ),
      ),
    );
  }

  void getData(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text('My First App'),
      content: Text('Hello this is Kannan :)'),
    );
    showDialog(
        context: context,
        builder: (BuildContext builderContext) =>alertDialog);
  }
}
