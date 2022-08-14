import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductName extends StatelessWidget {
  final String productName;
  final String productModal;
  final String productDetail;
  final String reviewValue;
  final String review;

  const ProductName({
    Key? key,
    required this.productName,
    required this.productModal,
    required this.productDetail,
    required this.reviewValue,
    required this.review,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              productModal,
              style: const TextStyle(
                  color: Colors.black,
                  fontFamily: "Poppins",
                  fontSize: 25,
                  fontWeight: FontWeight.w300),
            ),
            Row(
              children: <Widget>[
                Text(
                  productName,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontFamily: "Poppins",
                      fontSize: 12,
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  " • ",
                  style: TextStyle(color: Colors.black.withOpacity(0.5)),
                ),
                Text(
                  productDetail,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontFamily: "Poppins",
                      fontSize: 12,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: <Widget>[
                  const Icon(
                    Iconsax.star,
                    size: 12,
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
                        fontSize: 12),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    review,
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontFamily: "Poppins",
                        fontSize: 12,
                        fontWeight: FontWeight.w300),
                  )
                ],
              ),
            ),
          ]),
    );
  }
}
