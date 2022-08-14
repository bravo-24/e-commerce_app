import 'package:e_commerce/widgets/checkout_values.dart';
import 'package:e_commerce/widgets/coupon_code.dart';
import 'package:e_commerce/widgets/products_in_cart.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "My Cart",
          style: TextStyle(
              color: Colors.black,
              fontFamily: "Poppins",
              fontSize: 25,
              fontWeight: FontWeight.w300),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Iconsax.arrow_left,
              color: Colors.black,
              size: 24,
            )),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Iconsax.bag_cross_1,
                color: Colors.black,
                size: 24,
              ))
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          SizedBox(
            height: 450,
            child: ListView(
              children: const <Widget>[
                SizedBox(
                  height: 20,
                ),
                ProductInCart(
                  productDetail: "256 GB",
                  productModal: "iPhone 13 Pro",
                  productName: "Apple",
                  price1: "999.",
                  price2: "99",
                  imageLink:
                      'https://images.unsplash.com/photo-1647866276622-7990c3ee684d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                ),
                SizedBox(
                  height: 20,
                ),
                ProductInCart(
                  productDetail: "Black",
                  productModal: "Series 6",
                  productName: "Apple Watch",
                  price1: "499.",
                  price2: "99",
                  imageLink:
                      'https://images.unsplash.com/photo-1649766816270-9bfb5baad984?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDd8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const CouponCode(),
          const SizedBox(
            height: 30,
          ),
          const CheckOutValues(
            price1: "1499.",
            price2: "98",
            price3: "9.",
            price4: "99",
          ),
          Container(
            height: 30,
            margin: const EdgeInsets.only(left: 150, bottom: 20),
            child: CustomPaint(painter: DrawDottedhorizontalline()),
          ),
          Container(
            height: 30,
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(children: <Widget>[
              Text(
                "Total",
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
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontSize: 20),
                  ),
                  const Text(
                    "1509.",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Poppins",
                        fontSize: 20),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 8),
                    child: const Text(
                      "97",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Poppins",
                          fontSize: 10),
                    ),
                  )
                ],
              ),
            ]),
          ),
          Container(
            height: 60,
            width: 370,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: const Color(0xff8CEDC1), elevation: 0.0),
              onPressed: () {},
              child: const Text(
                "Checkout",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w300,
                    fontSize: 15),
              ),
            ),
          )
        ],
      )),
    ));
  }
}

class DrawDottedhorizontalline extends CustomPainter {
  late Paint _paint;

  DrawDottedhorizontalline() {
    _paint = Paint();
    _paint.color = Colors.black.withOpacity(0.5); //dots color
    _paint.strokeWidth = 1; //dots thickness
    _paint.strokeCap = StrokeCap.square; //dots corner edges
  }

  @override
  void paint(Canvas canvas, Size size) {
    for (double i = -260; i < 100; i = i + 5) {
      // 5 is space between dots
      if (i % 3 == 0) {
        canvas.drawLine(Offset(i, 0.0), Offset(i + 10, 0.0), _paint);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
