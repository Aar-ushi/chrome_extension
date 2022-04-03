import 'package:flutter/material.dart';

import './objective.dart';
import './teacher.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: BaseApp(),
      routes: <String, WidgetBuilder>{
        '/teacher': (context) => Teacher(),
        '/objective': (context) => Objective(),
      },
    );
  }
}

class BaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 4, 10, 77),
      appBar: AppBar(title: Text("Audiguide"), backgroundColor: Color.fromARGB(255, 14, 81, 136)),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 4, 10, 77), Color.fromARGB(255, 21, 78, 126)],
              begin: Alignment.topCenter,
              end:Alignment.bottomCenter,
              stops: [0.3, 0.7],),
          ),
          alignment: Alignment.center,
          child: Column(children: <Widget>[
        
        
        const Text(
          "Tell us About yourself", 
          style: TextStyle(
            fontFamily: 'Avenir',
            fontSize: 40,
            color: Color(0xffffffff),
            fontWeight: FontWeight.w900,
            ),
            ),
        
        Material(
          color: Colors.blue,
          elevation: 8,
          borderRadius:BorderRadius.circular(28),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: InkWell(
          onTap: () { Navigator.pushNamed(context, '/objective'); },
          child: Column(children: [Ink.image(image: const AssetImage('images/student.png'), 
          height: 170, 
          width: 200, 
          fit: BoxFit.cover,), 
          const SizedBox(
            width: 200.0,
            height: 40.0,
            
            child: Center(
                child: Text(
                  'I am a Student',
                  style: TextStyle(
                    color: Colors.white, 
                    fontWeight: FontWeight.w900,),
                ), //Text
              ), //Center
             //Card
          ), //SizedBox
        ]
        ),)),
        
        SizedBox(height: 10),

        Material(
          color: Colors.blue,
          elevation: 8,
          borderRadius:BorderRadius.circular(28),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: InkWell(
          onTap: () { Navigator.pushNamed(context, '/teacher'); },
          child: Column(children: [Ink.image(image: const AssetImage('images/teacher.png'), 
          height: 170, 
          width:200, 
          fit: BoxFit.cover,), 
          const SizedBox(
            width: 200.0,
            height: 40.0,
            
            child: Center(
                child: Text(
                  'I am a Teacher',
                  style: TextStyle(
                    color: Colors.white, 
                    fontWeight: FontWeight.w900),
                ), //Text
              ), //Center
             //Card
          ), //SizedBox
        ]
        ),)),
        
        
        
      ]),
      ),
      ),
    );
  }
}
