import 'package:flutter/material.dart';

// ignore: camel_case_types
class categoryCard extends StatelessWidget {
  final Color cardColor;
  final String title;
  final IconData iconCard;

  const categoryCard({Key? key, 
    required this.cardColor,
    required this.title,
    required this.iconCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style:
          ElevatedButton.styleFrom(primary: Colors.transparent, elevation: 0.0),
      child: Column(children: <Widget>[
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: cardColor,
            shape: BoxShape.circle,
          ),
          child: Icon(
            iconCard,
            color: Colors.white, size: 24,
          ),
        ),
        const Spacer(),
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 10,
            fontFamily: "Poppins",
          ),
        )
      ]),
    );
  }
}
