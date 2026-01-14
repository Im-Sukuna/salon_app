import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgetPasswordCode extends StatelessWidget {
  const ForgetPasswordCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: SafeArea(
      //   child: Stack(
      //     children: [
      //       Align(
      //         alignment: Alignment.topRight,
      //         child: SvgPicture.asset(
      //           "assets/images/verification_bubble.svg",
      //           fit: BoxFit.contain,
      //         ),
      //       ),
      //       Align(
      //         alignment: Alignment.topRight,
      //         child: SvgPicture.asset(
      //           "assets/images/verification_bubble_two.svg",
      //           fit: BoxFit.contain,
      //         ),
      //       ),
      //       Column(
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           SizedBox(height: 157),
      //           Padding(
      //             padding: const EdgeInsets.symmetric(horizontal: 150),
      //             child: Container(
      //               decoration: BoxDecoration(
      //                 color: Colors.grey.shade100,
      //                 shape: BoxShape.circle,
      //               ),
      //               child: SvgPicture.asset(
      //                 "assets/images/shopping_bag_icon.svg",
      //                 //fit: BoxFit.contain,
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
