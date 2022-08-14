import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

// ignore: camel_case_types
class savedProductCard extends StatelessWidget {
  final String imageLink;
  final String productName;
  final String productModal;
  final String reviewValue;
  final String discountValue;
  final String price1;
  final String price2;

  const savedProductCard({Key? key, 
    required this.imageLink,
    required this.productName,
    required this.productModal,
    required this.reviewValue,
    required this.discountValue,
    required this.price1,
    required this.price2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style:
          ElevatedButton.styleFrom(primary: Colors.transparent, elevation: 0.0),
      onPressed: () {},
      child: Container(
        height: 80,
        width: 185,
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: const Color(0xff6F99A5)),
            borderRadius: BorderRadius.circular(10)),
        child: Column(children: <Widget>[
          Container(
            height: 10,
            margin: const EdgeInsets.only(left: 150, right: 10),
            child: IconButton(
              icon: const Icon(Iconsax.heart),
              color: const Color(0xffFF4343),
              iconSize: 10,
              onPressed: () {},
            ),
          ),
          Row(
            children: [
              Container(
                height: 45,
                width: 45,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.red,
                    image:  DecorationImage(
                      image: NetworkImage(
                          imageLink),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(10)),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                   Text(productModal,
                      style: const TextStyle(
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontSize: 10,
                      )),
                  Text(productName,
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontFamily: "Poppins",
                        fontSize: 8,
                      )),
                  Row(
                    children:  [
                      const Icon(
                        Iconsax.star,
                        size: 8,
                        color: Color(0xffFFBB00),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        reviewValue,
                        style: const TextStyle(
                            color: Color(0xffFFBB00),
                            fontFamily: "Poppins",
                            fontSize: 8),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
          Container(
            height: 15,
            margin: const EdgeInsets.only(left: 110, right: 10),
            child: Row(
              children: <Widget>[
                Container(
                  height: 15,
                  width: 30,
                  color: const Color(0xff8CEDC1),
                  child: Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                    child:  Text(
                      discountValue,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 8,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Spacer(),
                Row(
                  children: <Widget>[
                    const Text(
                      "\$",
                      style: TextStyle(color: Colors.black, fontSize: 8),
                    ),
                     Text(
                      price1,
                      style: const TextStyle(
                          color: Colors.black,
                          fontFamily: "Poppins",
                          fontSize: 8),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 2),
                      child:  Text(
                        price2,
                        style: const TextStyle(
                            color: Colors.black,
                            fontFamily: "Poppins",
                            fontSize: 5),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
