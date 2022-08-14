import 'package:flutter/material.dart';

class ProductInCart extends StatelessWidget {
  final String imageLink;
  final String productModal;
  final String productName;
  final String productDetail;
  final String price1;
  final String price2;

  const ProductInCart({
    Key? key,
    required this.imageLink,
    required this.productModal,
    required this.productName,
    required this.productDetail,
    required this.price1,
    required this.price2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 200,
            width: 160,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: NetworkImage(imageLink)),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            margin: const EdgeInsets.only(top: 45),
            height: 120,
            width: 130,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    productModal,
                    style: const TextStyle(
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontSize: 20,
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
                  const Spacer(),
                  Row(
                    children: <Widget>[
                      const Text(
                        "\$",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Poppins",
                            fontSize: 20),
                      ),
                      Text(
                        price1,
                        style: const TextStyle(
                            color: Colors.black,
                            fontFamily: "Poppins",
                            fontSize: 20),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 6),
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
            width: 5,
          ),
          Container(
            margin: const EdgeInsets.only(left: 15, top: 15),
            height: 25,
            width: 25,
            child: IconButton(
              iconSize: 24,
              onPressed: () {},
              icon: const Icon(Icons.close),
            ),
          )
        ],
      ),
    );
  }
}
