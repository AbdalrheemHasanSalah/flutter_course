import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//StatelessWidget is immutable; all of its properties are final.

//safearea widget keeps the app content within the safe area of the device.

//column widget arranges its children vertically.
//row widget arranges its children horizontally.

//mainAxisSize property of column defines how much space the column should occupy in the main axis (vertical).
//min makes the column occupy only as much space as its children need.

//mainAxisAlignment property of column defines how to align the children vertically.
//spaceEvenly distributes the free space evenly between and around the children.
//spaceBetween places the free space only between the children.

//verticalDirection property of column defines the vertical order of the children.
//VerticalDirection.up makes the children start from the bottom and go upwards.

//crossAxisAlignment property of column defines how to align the children horizontally.
//end aligns the children to the right side of the column.
//start aligns the children to the left side of the column.
//center aligns the children to the center of the column.
//stretch makes the children expand to fill the horizontal space of the column.

// children property of column takes a list of widgets to be displayed vertically.

//Container widget is used to contain other widgets and apply styling, positioning, and sizing.
//containar can have one child widget just.

//sizebox widget is used to create a box with a specific size.
//it can be used to add spacing between widgets.

//EdgeInsets is a class that represents the padding or margin around a widget.
//symmetric constructor of EdgeInsets allows us to set vertical and horizontal margins separately.
//fromLTRB constructor of EdgeInsets allows us to set margins for left, top, right, and bottom individually.
//only constructor of EdgeInsets allows us to set margin for only one side of the widget.

//we can change icon image for app by adding image in assets folder for android  in android/app/src/main/res/ delete all files(5) in mipmap folder and add new image with name ic_launcher.png
//and for ios in ios/Runner/Assets.xcassets replace all images with new images with same names.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                //backgroundColor: Colors.white,
                backgroundImage: AssetImage('images/avatar.jpg'),
              ), //widget for circular image
              Text(
                'عبدالرحيم صلاح',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 38.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'مبرمج',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  color: Colors.grey.shade200,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  //widget for horizontal line
                  color: Colors.grey.shade200,
                ),
              ),
              /*  Container(
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.all(10.0),
                color: Colors.white,
                child: Row(
                  children: [
                    Icon(Icons.phone, color: Colors.cyan[700]),
                    SizedBox(width: 15.0),
                    Text(
                      '+970592720889',
                      style: TextStyle(fontSize: 22.0, color: Colors.black87),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Icon(Icons.email, color: Colors.cyan[700]),
                    SizedBox(width: 15.0),
                    Text(
                      'workabdalrheemsalah@gmail.com',
                      style: TextStyle(fontSize: 20.0, color: Colors.black87),
                    ),
                  ],
                ),
              ),*/
              /* Card(
                //better than container we swap container with card that not have padding properties
                margin: EdgeInsets.all(20.0),
                color: Colors.white,
                child: Row(
                  children: [
                    Icon(Icons.phone, color: Colors.cyan[700]),
                    SizedBox(width: 15.0),
                    Text(
                      '+970592720889',
                      style: TextStyle(fontSize: 22.0, color: Colors.black87),
                    ),
                  ],
                ),
              ),*/
              /*Card(
                color: Colors.white,
                margin: EdgeInsets.all(20.0),
                child: Padding(                     //WIDGET TO ADD PADDING INSIDE CARD
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    children: [
                      Icon(Icons.email, color: Colors.cyan[700]),
                      SizedBox(width: 15.0),
                      Text(
                        'workabdalrheemsalah@gmail.com',
                        style: TextStyle(fontSize: 20.0, color: Colors.black87),
                      ),
                    ],
                  ),
                ),
              ),*/
              Card(
                //better than container we swap container with card that not have padding properties
                margin: EdgeInsets.all(10.0),
                color: Colors.white,
                child: ListTile(
                  //LIST TILE WIDGET FOR ROW WITH ICON AND TEXT
                  //AND HANDLES PADDING AUTOMATICALLY
                  //SO NO NEED TO USE SIZEBOX FOR SPACING
                  leading: Icon(Icons.phone, color: Colors.cyan[700]),
                  title: Text(
                    '+970592720889',
                    style: TextStyle(fontSize: 22.0, color: Colors.black87),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.cyan[700]),
                  title: Text(
                    'workabdalrheemsalah@gmail.com',
                    style: TextStyle(fontSize: 20.0, color: Colors.black87),
                  ),
                ),
              ),
            ],
          ),
          /*  child: Column(
            //can convert to row for horizontal arrangement
            //mainAxisSize: MainAxisSize.min,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,by default start
            //verticalDirection: VerticalDirection.up, by default down
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Text("container 1"),
                color: Colors.white,
                height: 100.0,
                width: 100.0,
                // margin: EdgeInsets.only(left: 30.0),
                //padding: EdgeInsets.all(20.0),
              ),
              SizedBox(
                height: 30.0,
              ), //for spacing between widgets sizebox used width in row
              Container(
                child: Text("container 2"),
                height: 100.0,
                width: 100.0,
                color: Colors.blue,
              ),
              Container(
                child: Text("container 3"),
                height: 100.0,
                width: 100.0,
                color: Colors.yellow,
              ),
              Container(height: double.infinity, width: 100.0),
            ],
          ),*/
        ),
      ),
    );
  }
}
