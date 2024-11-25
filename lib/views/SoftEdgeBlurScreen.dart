import 'dart:ui';
import 'package:dream_emirates/config/colors/colors.dart';
import 'package:dream_emirates/config/extension/spaceWidthExtension.dart';
import 'package:dream_emirates/views/Dashboard/widgets/Image_with_title.dart';
import 'package:dream_emirates/views/Dashboard/widgets/background_widget.dart';
import 'package:dream_emirates/views/Trade/widgets/account_Actions_Widget.dart';
import 'package:dream_emirates/views/Trade/widgets/buy_sell_actions_widget.dart';
import 'package:dream_emirates/views/Trade/widgets/p_l_widget.dart';
import 'package:dream_emirates/views/widgets/containerWidget.dart';
import 'package:flutter/material.dart';

class SoftEdgeBlurScreen extends StatefulWidget {
  const SoftEdgeBlurScreen({super.key});

  @override
  State<SoftEdgeBlurScreen> createState() => _SoftEdgeBlurScreenState();
}

class _SoftEdgeBlurScreenState extends State<SoftEdgeBlurScreen> {
  final ScrollController _scrollController = ScrollController();
  double _opacity = 1.0; // Initial opacity for the TextFormField
  bool _showLogo = false; // Control the visibility of the logo
  double _logoPosition = -100; // Initial position of the logo off-screen

  @override
  void initState() {
    super.initState();
    // Add a listener to the ScrollController
    _scrollController.addListener(() {
      setState(() {
        // Change opacity and logo position based on scroll position
        if (_scrollController.offset > 50) {
          _opacity = 0.0; // Fade out the TextFormField
          _showLogo = true; // Show the logo
          _logoPosition = 20; // Move the logo to center
        } else if (_scrollController.offset > 80) {
          _opacity = 0.5; // Fade out the TextFormField
          _showLogo = true; // Show the logo
          _logoPosition = 50; // Move the logo to center
        } else {
          _opacity = 1.0; // Fade in the TextFormField
          _showLogo = false; // Hide the logo
          _logoPosition = -10; // Reset the logo position off-screen
        }
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  final List<String> cardImages = [
    'assets/images/img1.avif',
    'assets/images/img2.png',
    'assets/images/img3.png',
    'assets/images/img4.jpg',
    'assets/images/img5.jpg',
    'assets/images/img6.jpg',
    'assets/images/img7.jpg',
    'assets/images/img8.jpg',
    'assets/images/img9.jpg',
    'assets/images/img1.avif',
    'assets/images/img2.png',
    'assets/images/img3.png',
    'assets/images/img4.jpg',
    'assets/images/img5.jpg',
    'assets/images/img6.jpg',
    'assets/images/img7.jpg',
    'assets/images/img8.jpg',
    'assets/images/img9.jpg',
    'assets/images/img1.avif',
    'assets/images/img2.png',
    'assets/images/img3.png',
    'assets/images/img4.jpg',
    'assets/images/img5.jpg',
    'assets/images/img6.jpg',
    'assets/images/img7.jpg',
    'assets/images/img8.jpg',
    'assets/images/img9.jpg',
  ];
  final List<String> cardTitles = [
    'Edge Blur',
    'Cornering',
    'Rapid Blur',
    'Unfocused',
    'Soft Blur',
    'Gossamer',
    'Hazy',
    'Dewy',
    'Foggy',
    'Cloudy',
    'Luminous',
    'Glowing',
    'Radiant',
    'Bright',
    'Shiny',
    'Glossy',
    'Polished',
    'Sleek',
    'Smooth',
    'Silky',
    'Velvety',
    'Satiny',
    'Lustrous',
    'Gleaming',
    'Glistening',
    'Sparkling',
    'Twinkling',
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: <Widget>[
          GridView.builder(
            controller: _scrollController, // Attach the ScrollController
            itemCount: cardImages.length,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(top: 230),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 0.8),
            itemBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage(
                        cardImages[index],
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 8, bottom: 8),
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.45),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                          )),
                      child: Row(
                        children: [
                          Text(
                            cardTitles[index],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.favorite_border_rounded,
                            color: Colors.grey.shade400,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          // Blurred App Bar

          BackgroundWidgetDashboard(),

          Padding(
            padding: const EdgeInsets.only(top: 66.0, left: 15, right: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageWithTitle(name: 'Majharul islam', imageUrl: ''),
              ],
            ),
          ),
          // Positioned(
          //   top: 0,
          //   left: 0,
          //   right: 0,
          //   child: ClipRect(
          //     child: BackdropFilter(
          //       filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          //       child: Container(
          //         width: double.infinity,
          //         height: 140.0, // Height of the blurred app bar
          //         decoration: BoxDecoration(
          //           color: const Color(0xff363336)
          //               .withOpacity(0.3), // Slightly darker transparent color
          //         ),
          //       ),
          //     ),
          //   ),
          // ),

          /*
          // Search TextField with animation on scroll
          Positioned(
            top:
                120, // Adjust to create more space between the blurred app bar and ListView
            left: 16,
            right: 16,
            child: AnimatedOpacity(
              opacity:
                  _opacity, // Use the opacity value based on scroll position
              duration: const Duration(
                  milliseconds: 300), // Duration of the fade animation
              child: SizedBox(
                height: 65, // Height of the TextFormField
                child: TextFormField(
                  style: const TextStyle(fontSize: 20), // Text size
                  decoration: InputDecoration(
                    hintText: 'Search for images', // Placeholder text
                    hintStyle: const TextStyle(
                        fontSize: 16, color: Colors.grey), // Hint text style
                    filled: true,
                    fillColor: Colors
                        .grey.shade800, // Background color with transparency
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none, // Remove the border
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none, // Remove the border
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16), // Adjust padding
                  ),
                ),
              ),
            ),
          ),
          // Flutter logo animation
        
        */

          AnimatedPositioned(
              // left: _logoPosition - 20,
              top: _logoPosition - 20, // Adjust logo vertical position
              // right: 50,
              // left: _logoPosition - 20,
              duration: const Duration(
                  milliseconds: 800), // Duration of the position animation
              child: AnimatedOpacity(
                  opacity: _showLogo ? 1.0 : 0.0, // Fade in the logo if showing
                  duration: const Duration(milliseconds: 800),
                  child: ContainerWidet(
                    initialHeight: height * .18,
                    initialWidth: width,
                    borderColor: Colors.transparent,
                    borderWidth: 0,
                    backgroundColor: Colors.white,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 50.0, left: 16, right: 16),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  //accounts1
                                  // Accountswidget(),
                                  const Expanded(child: Text('data')),
                                  //icons
                                  GestureDetector(
                                      onTap: () {
                                        print('cliceked');
                                      },
                                      child: const AccountActionsWidget()),
                                ],
                              ),
                              20.h,
                              //p/l
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  //p/L
                                  const PLWidget(
                                    amount: '15645',
                                  ),
                                  //buy and sell
                                  BuySellActionsWidget(
                                    buyAmount: '544',
                                    sellAmount: '54',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ))),
        ],
      ),
    );
  }
}


/*
Container(
                width: 60, // Width of the logo
                height: 60, // Height of the logo
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.cyan.withOpacity(0.2),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'X',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.grey.shade300,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'X',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.grey.shade300,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              */