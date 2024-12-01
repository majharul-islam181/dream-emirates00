// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
// ignore_for_file: must_be_immutable

import 'package:dream_emirates/models/vendors/vendors_model.dart';
import 'package:dream_emirates/views/Trade/widgets/account_card_bottom.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:dream_emirates/config/colors/colors.dart';
import 'package:dream_emirates/config/extension/spaceWidthExtension.dart';
import 'package:dream_emirates/views/widgets/containerWidget.dart';
import 'package:dream_emirates/views/widgets/global_text_widget.dart';
/*
class AccountBottomSheet extends StatefulWidget {
  List<String> imageUrl;
  List<String> accountName;
  int accountCount;
  final List<Company> allAccountList;
  Function(Company)? onAccountTap;
  final Function(int)? onAccountSelected;

  final int selectedAccountIndex;
  AccountBottomSheet(
      {super.key,
      required BuildContext context,
      required this.accountName,
      required this.accountCount,
      this.onAccountTap,
      required this.allAccountList,
      required this.selectedAccountIndex,
      this.onAccountSelected, // Accept callback
      required this.imageUrl});

  @override
  State<AccountBottomSheet> createState() => _AccountBottomSheetState();
}

class _AccountBottomSheetState extends State<AccountBottomSheet> {
  late double height;
  late double width;
  int? selectedAccountIndex;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Container(
      // height: height * .7,
      // height: MainAxisSize.min,
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          const GlobalTextWidget(
            title: 'Select account',
            fontSize: 14,
            fontWeight: 500,
          ),
          10.h,

          SizedBox(
            height: 400,
            child: ListView.builder(
                itemCount: widget.accountCount,
                itemBuilder: (context, index) {
                  final account = widget.allAccountList[index];
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedAccountIndex = index;

                        if (kDebugMode) {
                          print(
                              'selected index value://////////////////////////// $selectedAccountIndex ////////////////////////////////////////////////////////////');
                        }
                      });
                      widget.onAccountSelected?.call(index);
                      if (widget.onAccountTap != null) {
                        widget.onAccountTap!(account);
                      }
                      Navigator.pop(context);
                    },
                    child: AccountCardBottom(
                      isClicked: selectedAccountIndex == index,
                      imageUrl: widget.imageUrl[index],
                      accountName: widget.accountName[index],
                      initIdValue: widget.allAccountList[index].initID,
                    ),
                  );
                }),
          ),

          20.h,

          //close button
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: ContainerWidet(
              initialHeight: height * .05,
              initialWidth: width * .9,
              backgroundColor: AppColors.moreActionColor,
              borderRadious: 16,
              borderWidth: 1,
              borderColor: Colors.grey.withOpacity(0.4),
              child: const Center(
                child: GlobalTextWidget(
                  title: 'Close',
                  fontSize: 17,
                  fontWeight: 400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
*/

class AccountBottomSheet extends StatefulWidget {
  final List<String> imageUrl;
  final List<String> accountName;
  final int accountCount;
  final List<Company> allAccountList;
  final Function(Company)? onAccountTap;
  final Function(int)? onAccountSelected;
  final int selectedAccountIndex;

  const AccountBottomSheet({
    super.key,
    required BuildContext context,
    required this.accountName,
    required this.accountCount,
    this.onAccountTap,
    required this.allAccountList,
    required this.selectedAccountIndex,
    this.onAccountSelected,
    required this.imageUrl,
  });

  @override
  State<AccountBottomSheet> createState() => _AccountBottomSheetState();
}

class _AccountBottomSheetState extends State<AccountBottomSheet> {
  late double height;
  late double width;
  int? selectedAccountIndex;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          const GlobalTextWidget(
            title: 'Select account',
            fontSize: 14,
            fontWeight: 500,
          ),
          const SizedBox(height: 10),

          SizedBox(
            height: 400,
            child: ListView.builder(
              itemCount: widget.accountCount,
              itemBuilder: (context, index) {
                // Check if index is within bounds for each list
                final account = (index < widget.allAccountList.length)
                    ? widget.allAccountList[index]
                    : null;
                final accountImageUrl = (index < widget.imageUrl.length)
                    ? widget.imageUrl[index]
                    : 'assets/icons/no-photo.png'; // Default image path
                final accountName = (index < widget.accountName.length)
                    ? widget.accountName[index]
                    : 'Account';

                // Skip this item if account is null
                if (account == null) return const SizedBox.shrink();

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedAccountIndex = index;
                    });
                    widget.onAccountSelected?.call(index);
                    if (widget.onAccountTap != null) {
                      widget.onAccountTap!(account);
                    }
                    // Navigator.pop(context);
                    if (Navigator.canPop(context)) {
                      Navigator.pop(context);
                    }
                  },
                  child: AccountCardBottom(
                    isClicked: selectedAccountIndex == index,
                    imageUrl: accountImageUrl,
                    accountName: accountName,
                    initIdValue: account.initID,
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),

          // Close button
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: ContainerWidet(
              initialHeight: height * .05,
              initialWidth: width * .9,
              backgroundColor: AppColors.moreActionColor,
              borderRadious: 16,
              borderWidth: 1,
              borderColor: Colors.grey.withOpacity(0.4),
              child: const Center(
                child: GlobalTextWidget(
                  title: 'Close',
                  fontSize: 17,
                  fontWeight: 400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
