import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Header extends StatelessWidget {
  final String header;

  const Header({
    Key? key,
    required this.header,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: <Widget>[
          Text(
            header,
            style: const TextStyle(
              color: Colors.black,
              fontFamily: "Poppins",
              fontSize: 25,
            ),
          ),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const Icon(Iconsax.arrow_right_1))
        ],
      ),
    );
  }
}
