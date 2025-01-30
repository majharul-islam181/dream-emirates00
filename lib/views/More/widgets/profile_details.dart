// ignore_for_file: must_be_immutable, non_constant_identifier_names

import 'package:dream_emirates/bloc/balance_bloc/balance_cubit.dart';
import 'package:dream_emirates/views/widgets/containerWidget.dart';
import 'package:flutter/material.dart';
import '../../widgets/global_text_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileDetails extends StatelessWidget {
  ProfileDetails(
      {super.key,
      required this.city,
      required this.country,
      this.email = '',
      required this.phoneNumber,
      required this.userName,
      required this.account_verify,
      required this.kycVerification});
  late double height;
  late double width;
  final String city, country, email, phoneNumber, userName, account_verify;
  void Function()? kycVerification;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return BlocBuilder<BalanceCubit, BalanceState>(
      builder: (context, state) {
        return ContainerWidet(
          initialHeight: height * .25,
          initialWidth: width * .9,
          backgroundColor: Colors.white,
          borderRadious: 10,
          borderColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // profile name

                // Row(
                //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Image.asset(
                //       'assets/icons/men.png',
                //       height: 30,
                //     ),
                //     10.w,
                //     const GlobalTextWidget(
                //       title: 'Md. Majharul Islam',
                //       fontSize: 14,
                //       fontWeight: 400,
                //       opacity: 0.5,
                //     ),
                //     5.w,
                //     Image.asset(
                //       'assets/icons/icons8-verified-48.png',
                //       height: 20,
                //     )
                //   ],
                // ),

                Row(
                  children: [
                    Image.asset(
                      'assets/icons/men.png',
                      height: 30,
                    ),
                    const SizedBox(width: 10),
                    GlobalTextWidget(
                      title: userName,
                      fontSize: 14,
                      opacity: 0.5,
                    ),
                    const SizedBox(width: 5),
                    account_verify == 'verified'
                        ? GestureDetector(
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Verified user"),
                                  duration: Duration(seconds: 2),
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/icons/icons8-verified-48.png',
                              height: 20,
                            ),
                          )
                        : const SizedBox.shrink(),
                  ],
                ),

                const SizedBox(height: 2),

                Row(
                  children: [
                    const GlobalTextWidget(
                      title: 'Email: ',
                      fontSize: 14,
                      fontWeight: 400,
                      opacity: 0.5,
                    ),
                    GlobalTextWidget(
                      title: email,
                      fontSize: 14,
                      fontWeight: 400,
                    ),
                  ],
                ),
                // const SizedBox(height: 5),

                Row(
                  children: [
                    const GlobalTextWidget(
                      title: 'Phone Number: ',
                      fontSize: 14,
                      fontWeight: 400,
                      opacity: 0.5,
                    ),
                    GlobalTextWidget(
                      title: phoneNumber,
                      fontSize: 14,
                      fontWeight: 400,
                    ),
                  ],
                ),

                Row(
                  children: [
                    const GlobalTextWidget(
                      title: 'Address: ',
                      fontSize: 14,
                      fontWeight: 400,
                      opacity: 0.5,
                    ),
                    Column(
                      children: [
                        GlobalTextWidget(
                          title: '$city, $country.',
                          fontSize: 14,
                          fontWeight: 400,
                        ),
                      ],
                    )
                  ],
                ),

                GestureDetector(
                  onTap: kycVerification,
                  child: ContainerWidet(
                    initialHeight: height * .04,
                    initialWidth: width * .8,
                    backgroundColor:
                        account_verify == 'verified' ? Colors.blue : Colors.red,
                    borderRadious: 8,
                    child: const Center(
                      child: GlobalTextWidget(
                        title: 'KYS Verification',
                        fontSize: 15,
                        fontWeight: 400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
