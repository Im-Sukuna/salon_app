import 'package:salon_app/widget/card_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HelloScreen extends StatefulWidget {
  const HelloScreen({super.key});

  @override
  State<HelloScreen> createState() => _HelloScreenState();
}

class _HelloScreenState extends State<HelloScreen> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: SvgPicture.asset(
                "assets/images/white_shape.svg",
              fit: BoxFit.contain,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: SvgPicture.asset(
              "assets/images/blue_shape.svg",
              fit: BoxFit.contain,
            ),
          ),
          PageView(
            scrollDirection: Axis.horizontal,
            controller: _controller,
            children: [CardUi(), CardUi(), CardTwo()],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 67, left: 137, right: 138),
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: SwapEffect(
                  activeDotColor: Color(0xFF004CFF),
                  dotColor: Color(0xFFC7D6FB),
                  dotHeight: 20,
                  dotWidth: 20,
                  spacing: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
