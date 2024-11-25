// // ignore_for_file: must_be_immutable

// import 'package:dream_emirates/config/colors/colors.dart';
// import 'package:dream_emirates/config/extension/spaceWidthExtension.dart';
// import 'package:dream_emirates/views/Trade/widgets/buy_widget.dart';
// import 'package:dream_emirates/views/Trade/widgets/open_widget.dart';
// import 'package:dream_emirates/views/widgets/containerWidget.dart';
// import 'package:dream_emirates/views/widgets/global_text_widget.dart';
// import 'package:flutter/material.dart';

// class BottomSheetWidget extends StatelessWidget {
//   late double height;
//   late double width;
//   BuildContext context;
//   BottomSheetWidget({super.key, required this.context});

//   @override
//   Widget build(BuildContext context) {
//     height = MediaQuery.of(context).size.height;
//     width = MediaQuery.of(context).size.width;
//     return Container(
//       height: height * .8, // Set your desired height here
//       width: double.infinity, // Set to full width or a specific value
//       padding: const EdgeInsets.all(16.0),
//       child: SingleChildScrollView(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             //card
//             Card(
//               elevation: 0.5,
//               child: ContainerWidet(
//                 initialHeight: height * .14,
//                 initialWidth: width * .9,
//                 backgroundColor: AppColors.whiteColor,
//                 borderRadious: 16,
//                 child: Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       //Trade
//                       const Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           GlobalTextWidget(
//                             title: 'Trade ID',
//                             fontSize: 12,
//                             fontWeight: 400,
//                             opacity: 0.5,
//                           ),
//                           GlobalTextWidget(
//                             title: '1 GM',
//                             fontSize: 12,
//                             fontWeight: 400,
//                             opacity: 0.5,
//                           ),
//                         ],
//                       ),

//                       //number
//                       const Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           GlobalTextWidget(
//                             title: '1234',
//                             fontSize: 15,
//                             fontWeight: 600,
//                           ),
//                           GlobalTextWidget(
//                             title: 'TTB',
//                             fontSize: 15,
//                             fontWeight: 600,
//                           ),
//                         ],
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 8.0, right: 8.0),
//                         child: Divider(
//                           thickness: 1,
//                           color: Colors.grey.withOpacity(0.3),
//                         ),
//                       ),

//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Row(
//                             children: [
//                               OpenWidget(),
//                               5.w,
//                               BuyWidget(),
//                             ],
//                           ),
//                           const GlobalTextWidget(
//                             title: 'Jewelry 22K',
//                             fontSize: 12,
//                             fontWeight: 400,
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),

//             10.h,
//             //Live Price
//             const Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 GlobalTextWidget(
//                   title: 'Live price',
//                   fontSize: 15,
//                   fontWeight: 500,
//                 ),
//                 GlobalTextWidget(
//                   title: '253.4',
//                   fontSize: 15,
//                   fontWeight: 700,
//                 ),
//               ],
//             ),

//             //profit Loss
//           ],
//         ),
//       ),
//     );
//   }
// }
