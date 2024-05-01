import 'package:firstproject/utils/colors.dart';
import 'package:firstproject/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';
class TopContainer extends StatelessWidget {
  final String title;
  final String searchBarTitle;

  const TopContainer({super.key, required this.title, required this.searchBarTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // title
        Row(
          children: [
            Text(title, style: kNormalStyle.copyWith(fontSize: 22, fontWeight: FontWeight.w500,color: Colors.black),
            ),
            const Spacer(),
            Container(
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kGreyColor.withOpacity(0.8),
              ),
              child: Stack(
                children: [
                  Icon(FontAwesomeIcons.bell, color: Colors.black87,size: 20,
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kOrangeColor
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10,),
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: CachedNetworkImage(
                imageUrl: 'https://plus.unsplash.com/premium_photo-1695339147177-d211732cfb2b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDEyN3x0b3dKWkZza3BHZ3x8ZW58MHx8fHx8',
                height: 40,
                width: 40,
                fit: BoxFit.cover,

              ),
            )

          ],
        ),

        //search bar
        Container(
          margin: EdgeInsets.symmetric(vertical: 30),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(color: kGreyColor.withOpacity(0.8),
              borderRadius: BorderRadius.circular(30.0)),
          child: Row(
            children: [
              Icon(FontAwesomeIcons.magnifyingGlass,size: 20,
              ),
              SizedBox(width: 10,),
              Text(searchBarTitle,
                style: TextStyle(color: Colors.black38,
                    fontWeight:FontWeight.w400
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
