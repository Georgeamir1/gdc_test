import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screens extends StatelessWidget {
  final String screenname;
  final String imagepath;
  final double? width;
  final double? height;
  final double? font;

  const Screens({
    Key? key,
    required this.screenname,
    required this.imagepath,
    this.height, // Optional height parameter
    this.width,
    this.font,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Container(
            height: height?? 64,
            width: width ??56,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    imagepath,
                  ),
                ],
              ),
            ),
          ),
          Text(
            screenname,
            style: TextStyle(
              fontSize: font ??14,
              fontWeight: FontWeight.w400,
              color: Color(0xffA1A8B0),
            ),
          ),

        ],
      ),
    );
  }
}
class CustomText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;

  const CustomText({
    Key? key,
    required this.text, // Required text
    this.fontWeight = FontWeight.w600, // Default font weight
    this.fontSize = 14.0, // Default font size
    this.color = const Color(0xFF101623), // Default color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}
final List<Map<String, dynamic>> Doctors = [
  {
    'image': 'assets/images/pexels-cedric-fauntleroy-4270371.png',
    'name': 'Dr. Marcus Horizon',
    'specialty': 'Cardiologist',
    'rating': 4.7,
    'distance': '800m',
  },
  {
    'image': 'assets/images/pexels-evelina-zhu-5434019.png',
    'name': 'Dr. Maria Elena',
    'specialty': 'Psychologist',
    'rating': 4.9,
    'distance': '1.5km',
  },
  {
    'image': 'assets/images/pexels-thirdman-5327580.png',
    'name': 'Dr. Stevi Jessi',
    'specialty': 'Orthopedist',
    'rating': 4.8,
    'distance': '2km',
  },
];
final List<Widget> pages = [
  Icon(Icons.home, size: 100),
  Icon(Icons.mail, size: 100),
  Icon(Icons.person, size: 100),
  Icon(Icons.calendar_today, size: 100),
];