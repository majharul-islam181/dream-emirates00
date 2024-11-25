// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:dream_emirates/bloc/active_trade_bloc/active_trade_bloc.dart';
import 'package:dream_emirates/bloc/complete_trade_bloc/complete_trade_bloc.dart';
import 'package:dream_emirates/bloc/pending_trade_bloc/pending_trade_bloc.dart';
import 'package:dream_emirates/config/colors/colors.dart';
import 'package:dream_emirates/models/vendors/vendors_model.dart';
import 'package:dream_emirates/views/Trade/widgets/account_bottom_sheet.dart';
import 'package:dream_emirates/views/widgets/global_text_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/*
class Accountswidget extends StatefulWidget {
  Accountswidget({
    super.key,
    required this.accountName,
    required this.imageURl,
    required this.accountCount,
    required this.activeTradeBloc,
    required this.pendingTradeBloc,
    required this.completeTradeBloc,
    required this.allAccountList,
    this.onTap,
    // this.isClicked = false,
    required this.selectedAccountIndex,
  });

  final List<String> imageURl;
  final List<String> accountName;
  final Function()? onTap;
  final int accountCount;
  final List<Company> allAccountList;
  final ActiveTradeBloc activeTradeBloc;
  final PendingTradeBloc pendingTradeBloc;
  final CompleteTradeBloc completeTradeBloc;
  int selectedAccountIndex;
  // bool isClicked;
  @override
  _AccountswidgetState createState() => _AccountswidgetState();
}

class _AccountswidgetState extends State<Accountswidget> {
  late double height;
  late double width;

  // int selectedAccountIndex = 0;
  String getFirstWord(String fullName) {
    List<String> words = fullName.split(' ');
    return words.isNotEmpty ? words[0] : fullName;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        if (kDebugMode) {
          print('tabbed');
          print('/////////////////////////////');
          print(widget.imageURl);
        }

        showModalBottomSheet(
          backgroundColor: AppColors.backgroundColor,
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return AccountBottomSheet(
              selectedAccountIndex: widget.selectedAccountIndex,
              context: context,
              accountName: widget.accountName,
              imageUrl: widget.imageURl,
              accountCount: widget.accountCount,
              onAccountTap: (Company selectedCompany) {
                int selectedIndex =
                    widget.allAccountList.indexOf(selectedCompany);

                if (selectedIndex != -1) {
                  setState(() {
                    widget.selectedAccountIndex = selectedIndex;
                    // widget.isClicked = true; // Set isClicked to true
                  });

                  int selectedVendorId = selectedCompany.id;

                  widget.activeTradeBloc.add(FetchActiveTradeEvent(
                      vendorId: selectedVendorId.toString()));
                  widget.pendingTradeBloc.add(FetchPendingTradeEvent(
                      vendorId: selectedVendorId.toString()));
                  widget.completeTradeBloc.add(FetchCompleteTradeEvent(
                      vendorId: selectedVendorId.toString()));
                }
              },
              allAccountList: widget.allAccountList,
            );
          },
        );
      },
      child: Row(
        children: [
          CircleAvatar(
            radius: 12,
            backgroundImage:
                _getImageProvider(widget.imageURl[widget.selectedAccountIndex]),
            backgroundColor: Colors.transparent,
          ),
          10.w,
          GlobalTextWidget(
            title:
                getFirstWord(widget.accountName[widget.selectedAccountIndex]),
            fontWeight: 600,
            fontSize: 17,
            maxLines: 1,
          ),
          2.w,
          const Icon(Icons.arrow_drop_down),
          5.w,
        ],
      ),
    );
  }

  ImageProvider _getImageProvider(String? imageUrl) {
    if (imageUrl != null && Uri.tryParse(imageUrl)?.isAbsolute == true) {
      return NetworkImage(imageUrl);
    } else {
      return const AssetImage('assets/icons/no-photo.png');
    }
  }
}

*/

/* 
class Accountswidget extends StatefulWidget {
  const Accountswidget({
    super.key,
    required this.accountName,
    required this.imageURl,
    required this.accountCount,
    required this.activeTradeBloc,
    required this.pendingTradeBloc,
    required this.completeTradeBloc,
    required this.allAccountList,
    this.onTap,
    required this.selectedAccountIndex,
  });

  final List<String> imageURl;
  final List<String> accountName;
  final Function()? onTap;
  final int accountCount;
  final List<Company> allAccountList;
  final ActiveTradeBloc activeTradeBloc;
  final PendingTradeBloc pendingTradeBloc;
  final CompleteTradeBloc completeTradeBloc;
  final int
      selectedAccountIndex; // Keep this final as it is passed to the widget

  @override
  _AccountswidgetState createState() => _AccountswidgetState();
}

class _AccountswidgetState extends State<Accountswidget> {
  late double height;
  late double width;
  late int selectedAccountIndex; // Declare the state variable

  @override
  void initState() {
    super.initState();
    selectedAccountIndex =
        widget.selectedAccountIndex; // Initialize from widget
  }

  String getFirstWord(String fullName) {
    List<String> words = fullName.split(' ');
    return words.isNotEmpty ? words[0] : fullName;
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        if (kDebugMode) {
          print('tabbed');
          print('/////////////////////////////');
        }

        showModalBottomSheet(
          backgroundColor: AppColors.backgroundColor,
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return AccountBottomSheet(
              selectedAccountIndex: selectedAccountIndex,
              context: context,
              accountName: widget.accountName,
              imageUrl: widget.imageURl,
              accountCount: widget.accountCount,
              onAccountTap: (Company selectedCompany) {
                int newSelectedIndex =
                    widget.allAccountList.indexOf(selectedCompany);

                if (newSelectedIndex != -1) {
                  setState(() {
                    selectedAccountIndex = newSelectedIndex;
                  });

                  int selectedVendorId = selectedCompany.id;

                  widget.activeTradeBloc.add(FetchActiveTradeEvent(
                      vendorId: selectedVendorId.toString()));
                  widget.pendingTradeBloc.add(FetchPendingTradeEvent(
                      vendorId: selectedVendorId.toString()));
                  widget.completeTradeBloc.add(FetchCompleteTradeEvent(
                      vendorId: selectedVendorId.toString()));
                }
              },
              allAccountList: widget.allAccountList,
            );
          },
        );
      },
      child: Row(
        children: [
          CircleAvatar(
            radius: 12,
            backgroundImage: _getImageProvider(
                widget.imageURl[selectedAccountIndex]), // Use state variable
            backgroundColor: Colors.transparent,
          ),
          const SizedBox(width: 10), // Updated for spacing
          GlobalTextWidget(
            title: getFirstWord(
                widget.accountName[selectedAccountIndex]), // Use state variable
            // fontWeight: FontWeight.w600,
            fontSize: 17,
            maxLines: 1,
          ),
          const SizedBox(width: 2), // Updated for spacing
          const Icon(Icons.arrow_drop_down),
          const SizedBox(width: 5), // Updated for spacing
        ],
      ),
    );
  }

  ImageProvider _getImageProvider(String? imageUrl) {
    if (imageUrl != null && Uri.tryParse(imageUrl)?.isAbsolute == true) {
      return NetworkImage(imageUrl);
    } else {
      return const AssetImage('assets/icons/no-photo.png');
    }
  }
}
*/

class Accountswidget extends StatefulWidget {
  const Accountswidget({
    super.key,
    required this.accountName,
    required this.imageURl,
    required this.accountCount,
    required this.activeTradeBloc,
    required this.pendingTradeBloc,
    required this.completeTradeBloc,
    required this.allAccountList,
    this.onTap,
    required this.selectedAccountIndex,
  });

  final List<String> imageURl;
  final List<String> accountName;
  final Function()? onTap;
  final int accountCount;
  final List<Company> allAccountList;
  final ActiveTradeBloc activeTradeBloc;
  final PendingTradeBloc pendingTradeBloc;
  final CompleteTradeBloc completeTradeBloc;
  final int selectedAccountIndex;

  @override
  _AccountswidgetState createState() => _AccountswidgetState();
}

class _AccountswidgetState extends State<Accountswidget> {
  late double height;
  late double width;
  late int selectedAccountIndex;

  @override
  void initState() {
    super.initState();
    selectedAccountIndex = widget.selectedAccountIndex;
  }

  String getFirstWord(String fullName) {
    List<String> words = fullName.split(' ');
    return words.isNotEmpty ? words[0] : fullName;
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          backgroundColor: AppColors.backgroundColor,
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return AccountBottomSheet(
              selectedAccountIndex: selectedAccountIndex,
              context: context,
              accountName: widget.accountName,
              imageUrl: widget.imageURl,
              accountCount: widget.accountCount,
              onAccountTap: (Company selectedCompany) {
                int newSelectedIndex =
                    widget.allAccountList.indexOf(selectedCompany);

                if (newSelectedIndex != -1) {
                  setState(() {
                    selectedAccountIndex = newSelectedIndex;
                  });

                  int selectedVendorId = selectedCompany.id;

                  widget.activeTradeBloc.add(FetchActiveTradeEvent(
                      vendorId: selectedVendorId.toString()));
                  widget.pendingTradeBloc.add(FetchPendingTradeEvent(
                      vendorId: selectedVendorId.toString()));
                  widget.completeTradeBloc.add(FetchCompleteTradeEvent(
                      vendorId: selectedVendorId.toString()));
                }
              },
              allAccountList: widget.allAccountList,
            );
          },
        );
      },
      child: Row(
        children: [
          CircleAvatar(
            radius: 12,
            backgroundImage: _getImageProvider(
              selectedAccountIndex < widget.imageURl.length
                  ? widget.imageURl[selectedAccountIndex]
                  : null, // Use a null-safe check
            ),
            backgroundColor: Colors.transparent,
          ),
          const SizedBox(width: 10),
          GlobalTextWidget(
            title: selectedAccountIndex < widget.accountName.length
                ? getFirstWord(widget.accountName[selectedAccountIndex])
                : '', // Fallback to empty string if out of range
            fontSize: 17,
            maxLines: 1,
          ),
          const SizedBox(width: 2),
          const Icon(Icons.arrow_drop_down),
          const SizedBox(width: 5),
        ],
      ),
    );
  }

  ImageProvider _getImageProvider(String? imageUrl) {
    if (imageUrl != null && Uri.tryParse(imageUrl)?.isAbsolute == true) {
      return NetworkImage(imageUrl);
    } else {
      return const AssetImage('assets/icons/no-photo.png');
    }
  }
}
