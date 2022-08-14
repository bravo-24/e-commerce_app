import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

// ignore: camel_case_types
class recommendedCard extends StatelessWidget {
  final String imageLink;
  final String productModal;
  final String productName;
  final String discountValue;
  final String reviewValue;
  final String price;
  final String price2;

  const recommendedCard({
    Key? key,
    required this.imageLink,
    required this.productModal,
    required this.productName,
    required this.discountValue,
    required this.reviewValue,
    required this.price,
    required this.price2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(
            imageLink),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                 Text(
                 productModal,
                  style: const TextStyle(
                      color: Colors.white,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  productName,
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 15,
                  width: 30,
                  color: const Color(0xff8CEDC1),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 3, horizontal: 5),
                    child: Text(
                      discountValue,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 8,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Container(
            height: 20,
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            decoration: const BoxDecoration(),
            child: Row(children: <Widget>[
              SizedBox(
                height: 12,
                child: Row(
                  children:  <Widget>[
                    const Icon(
                      Iconsax.star,
                      size: 8,
                      color:  Color(0xffFFBB00),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      reviewValue,
                      style: const TextStyle(
                          color:  Color(0xffFFBB00),
                          fontFamily: "Poppins",
                          fontSize: 8),
                    )
                  ],
                ),
              ),
              const Spacer(),
              Row(
                children: <Widget>[
                  const Text(
                    "\$",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                  Row(
                    children:  [
                      Text(
                        price,
                        style: const TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontSize: 10),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 2),
                    child:  Text(
                      price2,
                      style: const TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontSize: 5),
                    ),
                  )
                ],
              )
            ]),
          )
        ],
      ),
    );
  }
}
