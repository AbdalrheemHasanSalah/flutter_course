import 'package:flutter/material.dart';

void main() {
  //widget tree
  //Material App -> Scaffold -> AppBar, Body -> Center -> Image all widgets are nested
  //properties of MaterialApp: home
  //properties of Scaffold: appBar, body, backgroundColor
  //propertites of AppBar: title, backgroundColor
  //properties of Text: 'فكرة'
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Image(
            image: NetworkImage(
              'https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg?fit=fill&w=1200&h=630',
            ),
          ),
        ),
        backgroundColor: Colors.blue[200],
        appBar: AppBar(title: Text('فكرة'), backgroundColor: Colors.blue[900]),
      ),
    ),
  );
}
