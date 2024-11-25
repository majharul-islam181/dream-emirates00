// ignore_for_file: must_be_immutable

// import 'package:dream_emirates/config/extension/spaceWidthExtension.dart';
// import 'package:dream_emirates/views/Trade/widgets/account_Actions_Widget.dart';
// import 'package:dream_emirates/views/Trade/widgets/buy_sell_actions_widget.dart';
// import 'package:dream_emirates/views/Trade/widgets/p_l_widget.dart';
// import 'package:dream_emirates/views/Trade/widgets/tab_bar_widget.dart';
// import 'package:dream_emirates/views/widgets/containerWidget.dart';
// import 'package:flutter/material.dart';

// class AppBarWidget extends StatelessWidget {
//   AppBarWidget(
//       {super.key,
//       required this.accountsWidget,
//       required this.tabController,
//       required this.buyAmount,
//       required this.pLValue,
//       required this.sellAmount});
//   late double height;
//   late double width;
//   final Widget accountsWidget;
//   late TabController tabController;
//   String buyAmount;
//   String sellAmount;
//   String pLValue;

//   @override
//   Widget build(BuildContext context) {
//     height = MediaQuery.of(context).size.height;
//     width = MediaQuery.of(context).size.width;
//     return ContainerWidet(
//       initialHeight: height * .25,
//       initialWidth: width,
//       backgroundColor: Colors.white,
//       child: Padding(
//         padding: const EdgeInsets.only(top: 50.0, left: 16, right: 16),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 //accounts1
//                 // Accountswidget(),
//                 Expanded(child: accountsWidget),
//                 //icons
//                 const AccountActionsWidget(),
//               ],
//             ),
//             20.h,
//             //p/l
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 //p/L
//                 PLWidget(
//                   amount: pLValue,
//                 ),
//                 //buy and sell
//                 BuySellActionsWidget(
//                   buyAmount: buyAmount,
//                   sellAmount: sellAmount,
//                 ),
//               ],
//             ),
//             5.h,
//             const Divider(
//               thickness: 0.3,
//               color: Colors.grey,
//             ),

//             TabBarWidget(tabController: tabController),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:dream_emirates/config/extension/spaceWidthExtension.dart';
import 'package:dream_emirates/views/Trade/widgets/account_Actions_Widget.dart';
import 'package:dream_emirates/views/Trade/widgets/buy_sell_actions_widget.dart';
import 'package:dream_emirates/views/Trade/widgets/p_l_widget.dart';
import 'package:dream_emirates/views/Trade/widgets/tab_bar_widget.dart';
import 'package:dream_emirates/views/widgets/containerWidget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  AppBarWidget(
      {super.key,
      required this.accountsWidget,
      required this.tabController,
      required this.buyAmount,
      required this.pLValue,
      required this.sellAmount});
  late double height;
  late double width;
  final Widget accountsWidget;
  late TabController tabController;
  String buyAmount;
  String sellAmount;
  String pLValue;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return ContainerWidet(
      initialHeight: height * .25,
      initialWidth: width,
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 16, right: 16),
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //accounts1
                    // Accountswidget(),
                    Expanded(child: accountsWidget),
                    //icons
                    const AccountActionsWidget(),
                  ],
                ),
                20.h,
                //p/l
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //p/L
                    PLWidget(
                      amount: pLValue,
                    ),
                    //buy and sell
                    BuySellActionsWidget(
                      buyAmount: buyAmount,
                      sellAmount: sellAmount,
                    ),
                  ],
                ),
                7.h,
                const Divider(
                  thickness: 0.3,
                  color: Colors.grey,
                ),
              ],
            ),
            TabBarWidget(tabController: tabController),
          ],
        ),
      ),
    );
  }
}
