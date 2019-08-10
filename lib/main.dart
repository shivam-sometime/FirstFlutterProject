import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Welcome to Flutter',

      home: Scaffold(

        appBar: AppBar(
          title: Text('Welcome to Flutter',),
        ),

        body: Container(

        /*child : Text('Hello Shivam! How are you?',
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.red,
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              letterSpacing: 1,
              wordSpacing: 2,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.double,
            ),

          ),*/

        child : RaisedButton(
            child: Text('Play'),
             onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GoBack()));
            // Navigate to second route when tapped.
          },
         )

        )

      ),
    );

  }
}


class GoBack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(

      home: Scaffold(

        appBar: AppBar(
          title: Text('Hi Player', ),
        ),

        body: Center(

          child: RaisedButton(
            child: Text('Go Back'),
            onPressed: (){
              Navigator.pop(context);
            },

          ),
        ),

      ),
    );

  }
}
