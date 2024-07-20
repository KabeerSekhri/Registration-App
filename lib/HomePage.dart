import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
              "Congrats! You've signed in/created an account. Now here are a few jpegs"),
          SizedBox(
            height: 30,
          ),
          FlutterCarousel(
              items: [
                Image.network(
                    "https://www.usatoday.com/gcdn/authoring/authoring-images/2024/04/11/USAT/73285440007-tdw-11656-r.jpg?crop=4575,2573,x1625,y709"),
                Image.network(
                    "https://people.com/thmb/n6EdTmvAL3TkkAqrT47caD6tUu8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(723x121:725x123)/wisp-the-cat-from-tiktok-092823-1-74797b02afe7475295e1478b2cdf2883.jpg")
              ],
              options: CarouselOptions(
                  height: 200,
                  showIndicator: true,
                  slideIndicator: CircularSlideIndicator(),
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(seconds: 1),
                  autoPlayInterval: Duration(seconds: 2)))
        ],
      ),
    );
  }
}
