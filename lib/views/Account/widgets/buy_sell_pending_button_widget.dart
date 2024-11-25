import 'package:dream_emirates/config/extension/spaceWidthExtension.dart';
import 'package:dream_emirates/views/widgets/containerWidget.dart';
import 'package:dream_emirates/views/widgets/global_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BuySellPendingButtonWidget extends StatelessWidget {
  const BuySellPendingButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _getBuySellPendingWidget(context,
            'assets/icons/arrow-down-accountpage.svg', 'Buy', Colors.blue),
        _getBuySellPendingWidget(
            context,
            'assets/icons/arrow-up-accountpage.svg',
            'Sell',
            const Color(0xFFECA414)),
        _getBuySellPendingWidget(
          context,
          'assets/icons/timer-accountpage.svg',
          'Pending',
          const Color(0xFFE8EDF1),
        ),
      ],
    );
  }

  ContainerWidet _getBuySellPendingWidget(BuildContext context, String imageurl,
      String title, Color backgroundColor) {
    return ContainerWidet(
      initialHeight: MediaQuery.of(context).size.height * .05,
      initialWidth: MediaQuery.of(context).size.width * .28,
      backgroundColor: backgroundColor,
      borderColor: Colors.transparent,
      borderRadious: 12,
      borderWidth: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //icon
          SvgPicture.asset(
            imageurl,
            height: 30,
          ),

          //text
          GlobalTextWidget(
            title: title,
            color: title == 'Pending' ? Colors.black : Colors.white,
            fontSize: 15,
            fontWeight: 400,
          ),
          2.w,
        ],
      ),
    );
  }
}
