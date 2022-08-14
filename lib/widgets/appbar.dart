import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Appbar extends StatelessWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      margin: const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 400),
      child: Row(children: <Widget>[
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Iconsax.arrow_left,
              color: Colors.white,
              size: 24,
            )),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Iconsax.heart,
              color: Colors.white,
              size: 24,
            )),
      ]),
    );
  }
}
