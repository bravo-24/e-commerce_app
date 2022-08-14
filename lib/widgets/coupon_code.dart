import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CouponCode extends StatelessWidget {
  const CouponCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(children: <Widget>[
        Container(
          height: 40,
          width: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color(0xffD9D9D9)),
          child: TextFormField(
            style: const TextStyle(color: Colors.black),
            decoration: const InputDecoration(
              hintText: 'Add a coupon code',
              prefixIcon: Icon(
                Iconsax.ticket_discount,
                size: 16,
                color: Colors.black,
              ),
              hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w300),
              border: InputBorder.none,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            height: 40,
            width: 100,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xff8CEDC1), elevation: 0.0),
                onPressed: () {},
                child: const Text(
                  "Check the code",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w300,
                      fontSize: 8),
                )))
      ]),
    );
  }
}
