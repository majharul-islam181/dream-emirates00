// ignore_for_file: must_be_immutable

import 'package:dream_emirates/config/extension/spaceWidthExtension.dart';
import 'package:dream_emirates/views/widgets/containerWidget.dart';
import 'package:dream_emirates/views/widgets/global_text_widget.dart';
import 'package:flutter/material.dart';

class AccountCardBottom extends StatelessWidget {
  AccountCardBottom(
      {super.key,
      required this.imageUrl,
      required this.accountName,
      required this.initIdValue,
      required this.isClicked});
  late double height;
  late double width;
  String imageUrl;
  String accountName, initIdValue;

  bool isClicked;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
      child: ContainerWidet(
        initialHeight: height * .1,
        initialWidth: width,
        backgroundColor: Colors.white.withOpacity(1),
        borderRadious: 16,
        // borderColor: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //image
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  // boxShadow: const [BoxShadow(spreadRadius: 1)],
                  border: Border.all(
                    color: Colors.black.withOpacity(0.2),
                    width: 2,
                  ),
                ),
                child: CircleAvatar(
                  radius: 18,
                  backgroundImage: _getImageProvider(imageUrl),
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),

            // Expanded(
            //   flex: 1,
            //   child: CircleAvatar(
            //     radius: 18,
            //     backgroundImage: _getImageProvider(imageUrl),
            //     backgroundColor: Colors.transparent,
            //   ),
            // ),

            //constant

            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //account full name
                  GlobalTextWidget(
                    title: getLimitedCharacters(accountName, 30),
                    fontSize: 12,
                    fontWeight: 600,
                    maxLines: 2,
                  ),
                  6.h,
                  GlobalTextWidget(
                    title: initIdValue,
                    fontSize: 12,
                    fontWeight: 400,
                    opacity: 0.5,
                  ),
                ],
              ),
            ),

            //click
            // Expanded(
            //   flex: 1,
            //   child: isClicked == true
            //       ? const Icon(
            //           Icons.check_circle_outline_rounded,
            //           color: Colors.blue,
            //           size: 16,
            //         )
            //       : const SizedBox.shrink(),
            // )
          ],
        ),
      ),
    );
  }

  ImageProvider _getImageProvider(String imageUrl) {
    if (Uri.tryParse(imageUrl)?.isAbsolute ?? false) {
      return NetworkImage(imageUrl);
    } else {
      return const AssetImage(
        'assets/icons/photo-nehi.png',
      );
    }
  }

  String getLimitedCharacters(String text, int charLimit) {
    // If the text has fewer than the character limit, return the original text
    if (text.length <= charLimit) {
      return text;
    }
    print('account name: $text');

    // Trim the text to the character limit and add '...' at the end
    return '${text.substring(0, charLimit)}...';
  }
}
