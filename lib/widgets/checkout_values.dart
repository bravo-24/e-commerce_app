import 'package:flutter/material.dart';

class CheckOutValues extends StatelessWidget {
  final String price1;
  final String price2;
  final String price3;
  final String price4;

  const CheckOutValues({
    Key? key,
    required this.price1,
    required this.price2,
    required this.price3,
    required this.price4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(children: <Widget>[
        SizedBox(
          height: 30,
          child: Row(children: <Widget>[
            Text(
              "Sub Total",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontFamily: "Poppins",
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
            const Spacer(),
            Row(
              children: <Widget>[
                const Text(
                  "\$",
                  style: TextStyle(
                      color: Colors.black, fontFamily: "Poppins", fontSize: 20),
                ),
                Text(
                  price1,
                  style: const TextStyle(
                      color: Colors.black, fontFamily: "Poppins", fontSize: 20),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    price2,
                    style: const TextStyle(
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontSize: 10),
                  ),
                )
              ],
            ),
          ]),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 30,
          child: Row(children: <Widget>[
            Text(
              "Shipping",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontFamily: "Poppins",
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
            const Spacer(),
            Row(
              children: <Widget>[
                const Text(
                  "\$",
                  style: TextStyle(
                      color: Colors.black, fontFamily: "Poppins", fontSize: 20),
                ),
                Text(
                  price3,
                  style: const TextStyle(
                      color: Colors.black, fontFamily: "Poppins", fontSize: 20),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    price4,
                    style: const TextStyle(
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontSize: 10),
                  ),
                )
              ],
            ),
          ]),
        )
      ]),
    );
  }
}
