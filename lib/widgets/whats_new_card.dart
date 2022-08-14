import 'package:flutter/material.dart';

// ignore: camel_case_types
class whatsNewCard extends StatelessWidget {
  final String imageLink;
  final String adText1;
  final String adText2;

  const whatsNewCard({
    Key? key,
    required this.imageLink,
    required this.adText1,
    required this.adText2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style:
          ElevatedButton.styleFrom(primary: Colors.transparent, elevation: 0.0),
      child: Container(
        width: 270,
        decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.fill, image: NetworkImage(imageLink)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          color: Colors.white.withOpacity(0.2),
          child: Column(
            children: <Widget>[
              Container(
                height: 30,
                margin: const EdgeInsets.only(left: 140, top: 35, right: 10),
                child: Text(
                  adText1,
                  style: const TextStyle(
                      color: Color(0xffFF4343),
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Container(
                height: 30,
                margin: const EdgeInsets.only(left: 140, right: 10),
                child: Text(
                  adText2,
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontSize: 10,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
