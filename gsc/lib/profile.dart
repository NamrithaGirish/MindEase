import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
   
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
      body: Container(
        
        decoration: BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.deepOrange, Colors.pinkAccent]
    )
),
        child: Column(
          children: [
            Container(
              
              height: height / 3,
              width: width,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: new AssetImage("assets/images/gsc.jpeg"),
                  )),
            ),
            Container(
              child:Column(
                children: [
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

