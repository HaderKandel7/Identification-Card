import 'dart:ui';

import 'package:flutter/material.dart';

 import 'package:url_launcher/url_launcher.dart';
void main() {
  runApp(MyApp());
}

_sendingMails() async {
  const url = 'mailto:hader.kandel.7@gmail.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_linked() async {
  const url = 'https://flutter.io';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   // Here we take the value from the MyHomePage object that was created by
        //   // the App.build method, and use it to set our appbar title.
        //   title: Text(''),
        // ).
        body: Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
          color: Colors.teal,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage:Image.network('https://avatars.githubusercontent.com/u/61366219?s=60&v=4').image,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Center(
                child: Text(
                  'Hadeer kandeel',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 10,),
              Center(
                child: Text(
                  'Developer',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              GestureDetector(
                  onTap: () {
                     launch("tel://0121095057");
                  },
                  child: Card(

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),),
                      color: Colors.white,
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Icon(
                            Icons.call,
                            color: Colors.teal,
                            size: 35,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                          child: Text(
                            '0122227777',
                            style: TextStyle(color: Colors.teal, fontSize: 20),
                          ),
                        )
                      ]))),
              SizedBox(height: 10,),
              GestureDetector(
                  onTap: () {
                    _sendingMails();
                  },
                  child: SizedBox(
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),),
                        color: Colors.white,
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Icon(
                              Icons.mail,size: 35,
                              color: Colors.teal,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              'hader@gmail.com',
                              style: TextStyle(color: Colors.teal,fontSize: 20),
                            ),
                          )
                        ])),
                  )),
              SizedBox(height: 10,),
              GestureDetector(
                  onTap: () {
                    _linked();
                  },
                  child: Card( shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),),
                      color: Colors.white,
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Icon(
                            Icons.link,
                            color: Colors.teal,
                            size: 35,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            'hader.linledin.com',
                            style: TextStyle(color: Colors.teal, fontSize: 20),
                          ),
                        )
                      ]))),
              SizedBox(height: 10,),
              GestureDetector(
                  onTap: () {},
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),),
                      color: Colors.white,
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Icon(
                            Icons.location_city,
                            color: Colors.teal,
                            size: 35,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            'tanta',
                            style: TextStyle(color: Colors.teal, fontSize: 20),
                          ),
                        )
                      ]))),
              SizedBox(height: 10,),
            ],
          ),
        )));
  }
}
