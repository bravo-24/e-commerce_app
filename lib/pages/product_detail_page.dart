import 'package:e_commerce/widgets/appbar.dart';
import 'package:e_commerce/widgets/color_picker.dart';
import 'package:e_commerce/widgets/product_detail_text.dart';
import 'package:e_commerce/widgets/product_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  Color mycolor = Colors.lightBlue;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 450,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1647866276622-7990c3ee684d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
                  fit: BoxFit.fill,
                ),
              ),
              child: const Appbar(),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  SizedBox(
                    height: 80,
                    child: Row(children: const <Widget>[
                      ProductName(
                          productName: "Apple",
                          productModal: "iPhone 13 Pro",
                          productDetail: "256 GB",
                          reviewValue: "4,9",
                          review: "(20 review)"),
                    ]),
                  ),
                  const Spacer(),
                  Container(
                      height: 30,
                      width: 70,
                      margin: const EdgeInsets.only(),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent, elevation: 0.0),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text(
                                    'Pick a color!',
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w300),
                                  ),
                                  content: SingleChildScrollView(
                                    child: BlockPicker(
                                      pickerColor: mycolor, //default color
                                      onColorChanged: (Color color) {
                                        //on color picked
                                        setState(() {
                                          mycolor = color;
                                        });
                                      },
                                    ),
                                  ),
                                  actions: <Widget>[
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: const Color(0xff8CEDC1),
                                          elevation: 0),
                                      child: const Text(
                                        'Done',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w300),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                );
                              });
                        },
                        child: const ColorPickerWidget(),
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: const ProductDetailText(),
            ),
            Container(
              height: 70,
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(children: <Widget>[
                Row(
                  children: <Widget>[
                    const Text(
                      "\$",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Poppins",
                          fontSize: 25),
                    ),
                    const Text(
                      "999.",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Poppins",
                          fontSize: 25),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 5),
                      child: const Text(
                        "99",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Poppins",
                            fontSize: 15),
                      ),
                    )
                  ],
                ),
                const Spacer(),
                SizedBox(
                  height: 60,
                  width: 130,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff8CEDC1), elevation: 0.0),
                    onPressed: () {},
                    child: const Text(
                      "Add to cart",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Poppins",
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    ));
  }
}
