import 'package:flutter/material.dart';

class Subjects extends StatefulWidget {
  @override
  _SubjectsState createState() => _SubjectsState();
}

class _SubjectsState extends State<Subjects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 10, 77),
      appBar: AppBar(
        title: const Text("subject_page"),
      ),
      body: Center(
          child: Container(
              decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromARGB(255, 4, 10, 77), Color.fromARGB(255, 21, 78, 126)],
                begin: Alignment.topCenter,
                end:Alignment.bottomCenter,
                stops: [0.3, 0.7],),
              ),
              alignment: Alignment.center,
              // width: 200,
              child: Column(children: <Widget>[
                // const SizedBox(
                //     width: 200.0,
                //     height: 50.0,
                //     child: Card(
                //       color: Colors.blue,
                //       child: Center(
                //         child: Text(
                //           'Select Grade',
                //           style: TextStyle(color: Colors.black),
                //         ), //Text
                //       ), //Center
                //     ), //Card
                //   ), //SizedBox

                const Text(
                  "Select Subject",
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 30,
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w900,
                  ),
                ),

                SizedBox(height: 50.0),

                Container(
                  width: 200,
                  child: Material(
                    color: Colors.blue,
                    elevation: 8,
                    borderRadius: BorderRadius.circular(28),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      onTap: () {
                        // Navigator.push(
                        // context, MaterialPageRoute(builder: (_) => Subjects()));
                      },
                      child: Row(children: [
                        Ink.image(
                          image: const AssetImage('images/maths.png'),
                          height: 60,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 100.0,
                          height: 30.0,

                          child: Center(
                            child: Text(
                              'Maths',
                              style: TextStyle(color: Colors.white),
                            ), //Text
                          ), //Center
                          //Card
                        ), //SizedBox
                      ]),
                    )),
                ),
                SizedBox(height: 20),

                Container(
                  width: 200,
                  child: Material(
                    color: Colors.blue,
                    elevation: 8,
                    borderRadius: BorderRadius.circular(28),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      onTap: () {
                        // Navigator.push(
                        // context, MaterialPageRoute(builder: (_) => Subjects()));
                      },
                      child: Row(children: [
                        Ink.image(
                          image: const AssetImage('images/physics.png'),
                          height: 60,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 100.0,
                          height: 30.0,

                          child: Center(
                            child: Text(
                              'Physics',
                              style: TextStyle(color: Colors.white),
                            ), //Text
                          ), //Center
                          //Card
                        ), //SizedBox
                      ]),
                    )),
                ),
                SizedBox(height: 20),

                Container(
                  width: 200,
                  child: Material(
                    color: Colors.blue,
                    elevation: 8,
                    borderRadius: BorderRadius.circular(28),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      onTap: () {
                        // Navigator.push(
                        // context, MaterialPageRoute(builder: (_) => Subjects()));
                      },
                      child: Row(children: [
                        Ink.image(
                          image: const AssetImage('images/chem.png'),
                          height: 60,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 100.0,
                          height: 30.0,

                          child: Center(
                            child: Text(
                              'Chemistry',
                              style: TextStyle(color: Colors.white),
                            ), //Text
                          ), //Center
                          //Card
                        ), //SizedBox
                      ]),
                    )),
                ),
                SizedBox(height: 20),

                Container(
                  width:200,
                  child: Material(
                    color: Colors.blue,
                    elevation: 8,
                    borderRadius: BorderRadius.circular(28),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      onTap: () {
                        // Navigator.push(
                        // context, MaterialPageRoute(builder: (_) => Subjects()));
                      },
                      child: Row(children: [
                        Ink.image(
                          image: const AssetImage('images/bio.png'),
                          height: 60,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 100.0,
                          height: 30.0,

                          child: Center(
                            child: Text(
                              'Biology',
                              style: TextStyle(color: Colors.white),
                            ), //Text
                          ), //Center
                          //Card
                        ), //SizedBox
                      ]),
                    )),
                )
              ]))),
    );
  }

}