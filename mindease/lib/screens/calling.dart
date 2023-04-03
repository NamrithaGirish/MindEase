import 'dart:async';

import 'package:chatgpt_course/services/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'call.dart';
import 'chat_screen.dart';

class CallingPage extends StatefulWidget {
  const CallingPage({super.key});

  @override
  State<CallingPage> createState() => _CallingPageState();
}

class _CallingPageState extends State<CallingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

startTime() async {
  var duration = new Duration(seconds: 4);
  return new Timer(duration, route);
}
  route() {
  Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => Call()
    )
  ); 
}

  initScreen(BuildContext context) {
    final double width=MediaQuery.of(context).size.width;
    final double height=MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/logo.png'),
                radius: width/10,
              ),
            ),
            SizedBox(height: 50,),
             Text(
                'Calling',
              style: GoogleFonts.poppins(
                fontSize: 32,
                color: Colors.black),),
            
            SpinKitThreeBounce(
                color: Colors.black,
                size: 18,
              ),
            SizedBox(
              height: height/10,
            ),
            BottomAppBar(
                elevation: 0,
                height: height/10,
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      width: width/3,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
                        },
                        child: Icon(Icons.phone_disabled_sharp,color: Colors.black,)),
                    ),
                    Container(
                      width: width/3,
                      child: Icon(Icons.speaker_phone,color: Colors.black,),
                    ),
                    Container(
                      width: width/3,
                      child: Icon(Icons.mic_off,color: Colors.black,),
                    )
                    ]
                ),
              )
          ],
        )
      ),
    );
  }

@override
void initState() {
  super.initState();
  startTime();
}
}