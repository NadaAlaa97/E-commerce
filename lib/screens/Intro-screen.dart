import 'package:firstproject/utils/colors.dart';
import 'package:firstproject/utils/utils.dart';
import 'package:firstproject/widgets/image_list_view.dart';
import 'package:flutter/material.dart';

import 'home-screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: -10,
              left: -150,
              child: Row(
                children:const [
                  ImageListView(startIndex: 0),
                  ImageListView(startIndex: 1),
                  ImageListView(startIndex: 2),

                ],
              ),
          ),
          //title
          Positioned(
            top: MediaQuery.of(context).size.height * 0.08,
            child: const Text("Your Closet",
              textAlign: TextAlign.center,
            style: kTitleStyle,
            ),
          ),

          // information of screen
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.60,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.white60,
                    Colors.white,
                    Colors.white
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                ),
              ),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Your Appearance \nShows Your Quality",
                  style: kNormalStyle1,
                    textAlign: TextAlign.center,
                  ),
                   SizedBox(height: 30,),
                  Text("Change The Quality Of Your \n Appearance with Your Closet App",
                    style: kNormalStyle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children:buildIndicators(),
                  ),

                ],
              ),
            ),
          ),


          // bottom button
          Positioned(
            bottom: 30,
              left: 20,
              right: 20,

              child: SizedBox(
            height: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: kBackgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen())),
              child: const Text("Sign Up With Email"),
            ),
          ))
        ],
      ),
    );
  }
}
