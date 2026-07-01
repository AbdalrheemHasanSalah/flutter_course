import 'package:flutter/material.dart';
import 'dart:math'; //importing math library to use random number generator and other math functions

//Expanded widget to make the image take full width that is available in the row and column
//flex property in Expanded widget is used to define the proportion of space that a widget should take relative to its siblings in a Row or Column.
//image.asset('images/image-1.png') is a shorthand way to load an image from the assets folder in Flutter the same as Image(image: AssetImage('images/image-1.png'))
//the mean of (.) is make constructor or method or property belong to the class before it defined like Image.asset() belong to Image class
//TextButton widget to make the image clickable and perform an action when pressed The flatbutton is deprecated and we use TextButton instead
//onPressed property of TextButton is a callback function that is called when the button is pressed
//(){} is callback function or anonymous function or lambda function or closure or voidcallback
//setState() method is used to notify the framework that the internal state of this object has changed and the widget needs to be rebuilt to reflect the new state
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text('تطابق صورة'),
          backgroundColor: Colors.indigo[800],
        ),
        body: Imagepage(),
      ),
    ),
  );
}

class Imagepage extends StatefulWidget {
  const Imagepage({super.key});

  @override
  State<Imagepage> createState() => _ImagepageState();
}

class _ImagepageState extends State<Imagepage> {
  int leftImage = 1;
  int rightImage = 2;
  void changeImages() {
    leftImage = Random().nextInt(9) + 1;
    rightImage = Random().nextInt(9) + 1;
  }

  @override
  Widget build(BuildContext context) {
    //leftImage = 2;
    // var image1;
    // dynamic image1; IS SAME AS var image1;
    //var image1=9;
    //int leftImage = 1;
    //double pi = 3.14; for example
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftImage == rightImage ? 'مبروك! لقد فزت!' : 'حاول مرة أخرى',
          style: TextStyle(
            fontSize: 42.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            Expanded(
              //flex: 2,//flex value to make the image take double width that is available in the row and column vs the second image can take any width
              //child: Image(image: AssetImage('images/image-1.png')),
              child: TextButton(
                //to make the image clickable
                onPressed: () {
                  //print('Hello Image 1 clicked');
                  setState(() {
                    //to update the state of the widget
                    /*  leftImage =
                        Random().nextInt(9) +
                        1; //to generate a random number between 1 and 9\
                    rightImage = Random().nextInt(9) + 1;*/
                    changeImages();
                  });
                },
                child: Image.asset('images/image-$leftImage.png'),
              ),
            ),
            //Expanded widget to make the image take full width that is available in the row and column
            Expanded(
              //flex: 1,//flex value to make the image take half width that is available in the row and column vs the first image take any width
              //child: Image(image: AssetImage('images/image-1.png')),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    //to update the state of the widget
                    /*rightImage =
                        Random().nextInt(9) +
                        1; //to generate a random number between 1 and 9
                    leftImage = Random().nextInt(9) + 1;*/
                    changeImages();
                  });
                  //print('Hello Image 2 clicked');
                }, //to make the image clickable //perform an action when pressed //(){} is callback function or anonymous function or lambda function or closure or voidcallback
                child: Image.asset('images/image-$rightImage.png'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

/*class Imagepage extends StatelessWidget {

  const Imagepage({super.key});
  int leftImage = 1;

  @override
  Widget build(BuildContext context) {
    leftImage = 2;
    // var image1;
    // dynamic image1; IS SAME AS var image1;
    //var image1=9;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'حاول مرة أخرى',
          style: TextStyle(
            fontSize: 42.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            Expanded(
              //flex: 2,//flex value to make the image take double width that is available in the row and column vs the second image can take any width
              //child: Image(image: AssetImage('images/image-1.png')),
              child: TextButton(
                //to make the image clickable
                onPressed: () {
                  print('Hello Image 1 clicked');
                },
                child: Image.asset('images/image-$leftImage.png'),
              ),
            ),
            //Expanded widget to make the image take full width that is available in the row and column
            Expanded(
              //flex: 1,//flex value to make the image take half width that is available in the row and column vs the first image take any width
              //child: Image(image: AssetImage('images/image-1.png')),
              child: TextButton(
                onPressed: () {
                  print('Hello Image 2 clicked');
                }, //to make the image clickable //perform an action when pressed //(){} is callback function or anonymous function or lambda function or closure or voidcallback
                child: Image.asset('images/image-1.png'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}*/
