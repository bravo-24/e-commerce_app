import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

// ignore: camel_case_types
class searchBar extends StatelessWidget {
  const searchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      height: 45,
      width: 375,
      decoration: BoxDecoration(
          color: const Color(0xffd9d9d9),
          borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          hintText: 'What are you looking for?',
          prefixIcon: const Icon(
            Iconsax.search_normal_1,
            size: 15,
            color: Colors.black,
          ),
          suffixIcon: IconButton(
            icon: const Icon(
              Iconsax.setting_5,
              color: Colors.black,
              size: 15,
            ),
            onPressed: () {},
          ),
          hintStyle: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w300),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
