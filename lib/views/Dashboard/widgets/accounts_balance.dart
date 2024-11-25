// ignore_for_file: must_be_immutable
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dream_emirates/config/colors/colors.dart';
import 'package:dream_emirates/config/components/loading_widget.dart';
import 'package:dream_emirates/config/extension/spaceWidthExtension.dart';
import 'package:dream_emirates/views/widgets/containerWidget.dart';
import 'package:dream_emirates/views/widgets/global_text_widget.dart';
import 'package:flutter/material.dart';

class AccountsBalance extends StatelessWidget {
  AccountsBalance(
      {super.key,
      required this.accountbalance,
      required this.imageUrl,
      required this.buyRate,
      required this.sellRate,
      required this.highRate,
      required this.lowRate,
      required this.accountName});
  late double height;
  late double width;
  String accountbalance;
  String imageUrl;
  String accountName;
  String buyRate, sellRate, highRate, lowRate;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        ContainerWidet(
          initialHeight: height * .22,
          initialWidth: width * .95,
          backgroundColor: Colors.white,
          borderRadious: 16,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //main balance
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Container(
                        //   decoration: BoxDecoration(
                        //     shape: BoxShape.circle,
                        //     // boxShadow: const [BoxShadow(spreadRadius: 1)],
                        //     border: Border.all(
                        //       color: Colors.black.withOpacity(0.2),
                        //       width: 2,
                        //     ),
                        //   ),
                        //   child: CircleAvatar(
                        //     radius: 13,
                        //     backgroundImage: _getImageProvider(imageUrl),
                        //     backgroundColor: Colors.transparent,
                        //   ),
                        // ),

                        CircleAvatar(
                          radius: 13,
                          backgroundColor: Colors.transparent,
                          child: ClipOval(
                            child: Uri.tryParse(imageUrl)?.isAbsolute == true
                                ? CachedNetworkImage(
                                    imageUrl: imageUrl,
                                    placeholder: (context, url) =>
                                        const LoadingWidget(
                                      size: 10,
                                    ),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                    fit: BoxFit.cover,
                                    width: 26, // Diameter of the avatar
                                    height: 26,
                                  )
                                : Image.asset(
                                    'assets/icons/no-photo.png',
                                    fit: BoxFit.cover,
                                    width: 26,
                                    height: 26,
                                  ),
                          ),
                        ),

                        // CircleAvatar(
                        //   radius: 13,
                        //   backgroundImage: CachedNetworkImageProvider(
                        //       _getImageProvider(imageUrl)),
                        //   backgroundColor: Colors.transparent,
                        // ),

                        // CircleAvatar(
                        //   radius: 12,
                        //   child: Image.network(
                        //     imageUrl,
                        //     height: 30,
                        //     fit: BoxFit.cover,
                        //   ),
                        // ),
                        10.w,
                        GlobalTextWidget(
                          title: getLimitedWords(accountName, 3),
                          fontSize: 14,
                          fontWeight: 400,
                          opacity: 0.5,
                          color: Colors.black,
                          maxLines: 1,
                        ),
                        10.w,
                        // const Icon(
                        //   Icons.check_circle_outline_rounded,
                        //   size: 20,
                        // )
                      ],
                    ),
                    Image.asset(
                      'assets/icons/arrow-right.png',
                      height: 16,
                      width: 16,
                      color: Colors.black,
                    )
                  ],
                ),
                10.h,

                GlobalTextWidget(
                  title: accountbalance,
                  fontSize: 24,
                  fontWeight: 700,
                ),
                12.h,

                //vertical line
                Divider(
                  thickness: 1,
                  color: Colors.grey.withOpacity(0.5),
                ),
                10.h,

                //buy sell high low
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const GlobalTextWidget(
                          title: 'Buy',
                          fontSize: 12,
                          fontWeight: 400,
                          opacity: 0.5,
                        ),
                        5.h,
                        GlobalTextWidget(
                          title: buyRate,
                          fontSize: 14,
                          fontWeight: 600,
                          color: AppColors.buyTradeColor,
                        ),
                      ],
                    ),
                    5.h,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const GlobalTextWidget(
                          title: 'Sell',
                          fontSize: 12,
                          fontWeight: 400,
                          opacity: 0.5,
                        ),
                        5.h,
                        GlobalTextWidget(
                          title: sellRate,
                          fontSize: 14,
                          fontWeight: 600,
                          color: AppColors.sellTradeColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        10.h,
      ],
    );
  }

  _getImageProvider(String imageUrl) {
    if (Uri.tryParse(imageUrl)?.isAbsolute == true) {
      return CachedNetworkImageProvider(imageUrl);
    } else {
      return const AssetImage('assets/icons/no-photo.png');
    }
  }

  String getLimitedWords(String text, int wordLimit) {
    final words = text.split(' ');

    if (words.length <= wordLimit) {
      return text;
    }

    return '${words.take(wordLimit).join(' ')}...';
  }
}
