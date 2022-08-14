import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ProductDetailText extends StatelessWidget {
  const ProductDetailText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTextStyle.merge(
        style: const TextStyle(fontSize: 10.0, fontFamily: "Poppins"),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Padding(
                //key: Key('showMore'),
                padding: EdgeInsets.all(10.0),
                child: ReadMoreText(
                  'Now iPhone can shoot with shallow depth of field and automatically add elegant focus transitions between subjects. Cinematic mode can also anticipate when a prominent new subject is about to enter the frame and bring them into focus when they do, for far more creative storytelling. You have the option to change focus or adjust the level of bokeh even after capture.',
                  trimLines: 2,
                  //preDataText: "AMANDA",
                  preDataTextStyle: TextStyle(fontWeight: FontWeight.w500),
                  style: TextStyle(color: Colors.black),
                  colorClickableText: Color(0xff258BD6),
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'View more detail about product',
                  trimExpandedText: ' Show less',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
