import 'package:e_commerce/pages/cart_page.dart';
import 'package:e_commerce/pages/product_detail_page.dart';
import 'package:e_commerce/widgets/category_card.dart';
import 'package:e_commerce/widgets/color_picker.dart';
import 'package:e_commerce/widgets/header.dart';
import 'package:e_commerce/widgets/recommended_card.dart';
import 'package:e_commerce/widgets/saved_product_card.dart';
import 'package:e_commerce/widgets/search_bar.dart';
import 'package:e_commerce/widgets/whats_new_card.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Container(
          margin: const EdgeInsets.only(left: 15, top: 5),
          child: Column(
            children: <Widget>[
              const Text(
                "Hello,",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
              Text(
                "John",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CartPage()),
                );
              },
              icon: const Icon(Iconsax.bag),
              color: Colors.black,
              iconSize: 24,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            const searchBar(),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 75,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  SizedBox(
                    width: 75,
                    child: categoryCard(
                      cardColor: Color(0xff258BD6),
                      title: 'Glasses',
                      iconCard: Iconsax.glass_1,
                    ),
                  ),
                  SizedBox(
                    width: 75,
                    child: categoryCard(
                      cardColor: Color(0xff84B7FE),
                      title: 'Workout',
                      iconCard: Iconsax.weight_1,
                    ),
                  ),
                  SizedBox(
                    width: 75,
                    child: categoryCard(
                      cardColor: Color(0xffC6CEFF),
                      title: 'Watchs',
                      iconCard: Iconsax.watch,
                    ),
                  ),
                  SizedBox(
                    width: 75,
                    child: categoryCard(
                      cardColor: Color(0xff78A6C8),
                      title: 'Phones',
                      iconCard: Iconsax.mobile,
                    ),
                  ),
                  SizedBox(
                    width: 75,
                    child: categoryCard(
                      cardColor: Color(0xffE65C4F),
                      title: 'Grocery',
                      iconCard: Iconsax.shopping_cart,
                    ),
                  ),
                  SizedBox(
                    width: 75,
                    child: categoryCard(
                      cardColor: Color(0xff009393),
                      title: 'Furnitur',
                      iconCard: Iconsax.lamp,
                    ),
                  ),
                  SizedBox(
                    width: 75,
                    child: categoryCard(
                      cardColor: Color(0xff00E0C6),
                      title: 'Camp',
                      iconCard: Iconsax.tree,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Header(header: "What's new"),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 120,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const <Widget>[
                    whatsNewCard(
                        imageLink:
                            'https://images.unsplash.com/photo-1557618159-7d6fe547ae20?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                        adText1: 'Brand New',
                        adText2: 'furnitures just arrived'),
                    whatsNewCard(
                      imageLink:
                          'https://images.unsplash.com/photo-1517838277536-f5f99be501cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                      adText1: 'Brand New',
                      adText2: 'weights just arrived',
                    ),
                  ]),
            ),
            const SizedBox(
              height: 20,
            ),
            const Header(header: "Recommended for you"),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ColorPickerWidget()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.transparent, elevation: 0.0),
                    child: const recommendedCard(
                      imageLink:
                          'https://images.unsplash.com/photo-1628087235616-4e146afcd061?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80',
                      productModal: "White Tent",
                      productName: "Quechua",
                      discountValue: "%10",
                      reviewValue: "4,9",
                      price: "599.",
                      price2: "99",
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProductDetailPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.transparent, elevation: 0.0),
                    child: const recommendedCard(
                      imageLink:
                          'https://images.unsplash.com/photo-1647866276622-7990c3ee684d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                      productModal: "iPhone 13 Pro",
                      productName: "Apple",
                      discountValue: "%20",
                      reviewValue: "4,8",
                      price: "999.",
                      price2: "99",
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.transparent, elevation: 0.0),
                    child: const recommendedCard(
                      imageLink:
                          'https://images.unsplash.com/photo-1649766816270-9bfb5baad984?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDd8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80',
                      productModal: "Series 6",
                      productName: "Apple Watch",
                      discountValue: "%10",
                      reviewValue: "4,9",
                      price: "499.",
                      price2: "99",
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Header(header: "Saved products"),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                height: 170,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: <Widget>[
                        Row(
                          children: const <Widget>[
                            savedProductCard(
                                imageLink:
                                    'https://images.unsplash.com/photo-1572635196237-14b3f281503f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
                                productName: "Ray-Ban",
                                productModal: "Ray-Ban P",
                                reviewValue: "4,9",
                                discountValue: "%10",
                                price1: "99.",
                                price2: "99"),
                            savedProductCard(
                                imageLink:
                                    'https://newchurches.com/wp-content/uploads/2021/06/charles-deluvio-1-nx1QR5dTE-unsplash.jpg',
                                productName: "Dolce & Gabbana",
                                productModal: "USP2120",
                                reviewValue: "4,8",
                                discountValue: "%10",
                                price1: "129.",
                                price2: "99"),
                          ],
                        ),
                        const Spacer(),
                        Row(
                          children: const <Widget>[
                            savedProductCard(
                                imageLink:
                                    'https://images.unsplash.com/photo-1571873735645-1ae72b963024?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                                productName: "Pharma Hemp",
                                productModal: "Dog Food",
                                reviewValue: "4,9",
                                discountValue: "%10",
                                price1: "59.",
                                price2: "99"),
                            savedProductCard(
                                imageLink:
                                    'https://cdn-ehlln.nitrocdn.com/zxBubhVuLXELfaAqywMpLgdIvKdyGPMa/assets/static/optimized/rev-fcad4ba/wp-content/uploads/2021/07/lucas-george-wendt-3xtCeUhqZWE-unsplash-1536x1024.jpg',
                                productName: "Dolce & Gabbana",
                                productModal: "USG2150",
                                reviewValue: "4,5",
                                discountValue: "%10",
                                price1: "139.",
                                price2: "99"),
                          ],
                        )
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    ));
  }
}
