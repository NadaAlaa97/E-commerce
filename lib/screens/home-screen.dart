import 'package:firstproject/screens/category-display-screen.dart';
import 'package:firstproject/screens/product-display-screen.dart';
import 'package:firstproject/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int currentIndex = 0;
  final pageController = PageController(initialPage: 0);
  // tab bar icons
  final tabBarIcons = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.compass,
    FontAwesomeIcons.cartShopping,
    FontAwesomeIcons.user,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            PageView(
              controller:pageController ,
              onPageChanged: (index){
                setState(() {
                  currentIndex = index;
                });
              },
              children:const [
                ProductDisplayScreen(),
                CategoryDisplayScreen(),
              ],
            ),
            //bottom bar
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Container(alignment: Alignment.center,
              height: 70,
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ...tabBarIcons.map((icon) => IconButton(
                      onPressed: (){
                        icon == FontAwesomeIcons.house ? pageController.jumpToPage(0) :
                        pageController.jumpToPage(1);
                    },
                      icon: Icon(icon, color: Colors.white60, size: 22,),
                    ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
