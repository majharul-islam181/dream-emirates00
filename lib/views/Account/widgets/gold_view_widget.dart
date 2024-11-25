import 'package:dream_emirates/config/extension/spaceWidthExtension.dart';
import 'package:dream_emirates/views/widgets/containerWidget.dart';
import 'package:dream_emirates/views/widgets/global_text_widget.dart';
import 'package:flutter/material.dart';

class GoldViewWidget extends StatelessWidget {
  const GoldViewWidget(
      {super.key, required this.subtitle, required this.title});
  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      child: ContainerWidet(
        initialHeight: MediaQuery.of(context).size.height * .075,
        initialWidth: MediaQuery.of(context).size.width * .6,
        backgroundColor: Colors.white,
        borderColor: Colors.transparent,
        borderRadious: 12,
        borderWidth: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //icon
            // const Icon(Icons.home),
            // SvgPicture.asset(
            //   'assets/icons/goldbar.svg',
            //   height: 35,
            //   color: Colors.black,
            // ),
            Image.asset(
              'assets/icons/gold.png',
              height: 45,
            ),

            //text
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GlobalTextWidget(
                  title: title,
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: 400,
                ),
                5.h,
                GlobalTextWidget(
                  title: subtitle,
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: 600,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
