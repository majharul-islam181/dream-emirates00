// ignore_for_file: must_be_immutable

import 'package:dream_emirates/bloc/balance_bloc/balance_cubit.dart';
import 'package:dream_emirates/config/colors/colors.dart';
import 'package:dream_emirates/config/extension/spaceWidthExtension.dart';
import 'package:dream_emirates/utils/string.dart';
import 'package:dream_emirates/views/widgets/containerWidget.dart';
import 'package:flutter/material.dart';
import '../../widgets/global_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Adjust this import based on your file structure

class CurrentBalanceWidget extends StatelessWidget {
  CurrentBalanceWidget({super.key});
  late double height;
  late double width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return BlocBuilder<BalanceCubit, BalanceState>(
      builder: (context, state) {
        return ContainerWidet(
          initialHeight: height * .3,
          initialWidth: width * .9,
          backgroundColor: Colors.white,
          borderRadious: 10,
          borderColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Current balance
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const GlobalTextWidget(
                      title: AppStrings.currentBalance,
                      fontSize: 14,
                      fontWeight: 400,
                      opacity: 0.5,
                    ),
                    Image.asset(
                      'assets/icons/arrow-right.png',
                      height: 16,
                      width: 16,
                      color: Colors.black,
                    ),
                  ],
                ),
                // const SizedBox(height: 5),

                // Balance
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GlobalTextWidget(
                      title: state.balance
                          .toStringAsFixed(2), // Use the balance from the state
                    ),
                  ],
                ),
                // const SizedBox(height: 5),

                // Divider
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3.0),
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey.withOpacity(0.52),
                  ),
                ),
                // const SizedBox(height: 5),

                // Withdrawable + Profit/Loss
                /*
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GlobalTextWidget(
                      title: 'Withdraw-able',
                      fontSize: 12,
                      fontWeight: 400,
                      opacity: 0.5,
                    ),
                    GlobalTextWidget(
                      title: 'Profit/Loss',
                      fontSize: 12,
                      fontWeight: 400,
                      opacity: 0.5,
                    ),
                  ],
                ),

                // const SizedBox(height: 15),

                // Amounts (Example values, replace with dynamic values if needed)
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GlobalTextWidget(
                      title:
                          r'$ 80,0239.00', // Replace with dynamic value if necessary
                      fontSize: 14,
                      fontWeight: 600,
                      opacity: 0.5,
                    ),
                    GlobalTextWidget(
                      title: '0', // Replace with dynamic value if necessary
                      fontSize: 12,
                      fontWeight: 400,
                      opacity: 0.5,
                    ),
                  ],
                ),
                // const SizedBox(height: 10),
*/
                // Add fund - Take fund buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ContainerWidet(
                      initialHeight: height * .05,
                      initialWidth: width * .37,
                      backgroundColor: AppColors.darkGray,
                      borderRadious: 12,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                          SizedBox(width: 10),
                          GlobalTextWidget(
                            title: AppStrings.addFund,
                            fontSize: 15,
                            fontWeight: 400,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 5),
                    ContainerWidet(
                      initialHeight: height * .05,
                      initialWidth: width * .37,
                      backgroundColor: const Color(0xFFE8EDF1),
                      borderRadious: 12,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/minus.png'),
                          const SizedBox(width: 10),
                          const GlobalTextWidget(
                            title: AppStrings.takeFund,
                            fontSize: 15,
                            fontWeight: 400,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
