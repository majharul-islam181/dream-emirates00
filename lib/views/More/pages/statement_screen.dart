import 'package:dream_emirates/config/colors/colors.dart';
import 'package:dream_emirates/config/extension/spaceWidthExtension.dart';
import 'package:dream_emirates/views/More/widgets/const_title_widget.dart';
import 'package:dream_emirates/views/Trade/widgets/account_bottom_sheet.dart';
import 'package:dream_emirates/views/widgets/containerWidget.dart';
import 'package:dream_emirates/views/widgets/global_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
/*
class StatementScreen extends StatefulWidget {
  const StatementScreen({super.key});

  @override
  State<StatementScreen> createState() => _StatementScreenState();
}

class _StatementScreenState extends State<StatementScreen>
    with SingleTickerProviderStateMixin {
  late double height;
  late double width;
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const GlobalTextWidget(
          title: 'Statement',
          fontSize: 17,
          fontWeight: 600,
        ),
        centerTitle: true,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              //Card
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ContainerWidet(
                  initialHeight: height * .6,
                  initialWidth: width * .9,
                  backgroundColor: Colors.white,
                  borderRadious: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            ConstTitleWidget(
                              title: 'Select Vendor',
                            ),
                            8.h,
                            GestureDetector(
                              onTap: () {
                                // showModalBottomSheet(
                                //   context: context,
                                //   backgroundColor: AppColors.backgroundColor,
                                //   isScrollControlled: true,
                                //   builder: (BuildContext context) {
                                //     return IntrinsicHeight(
                                //         child: AccountBottomSheet(
                                //       context: context,
                                //       accountName: accountNames,
                                //       accountCount: accountNames.length,
                                //       allAccountList: user,
                                //       selectedAccountIndex: 2,
                                //       imageUrl: imageUrls,
                                //     ));
                                //   },
                                // );
                              },
                              child: ContainerWidet(
                                initialHeight: height * .055,
                                initialWidth: width,
                                backgroundColor: AppColors.backgroundColor,
                                borderWidth: 1,
                                borderColor: Colors.grey.withOpacity(0.5),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Ex. Karnaphuli Jewellery ...'),

                                      Icon(Icons.arrow_drop_down_sharp),
                                      // SvgPicture.asset(
                                      //   'assets/icons/calendar.svg',
                                      //   height: 24,
                                      // )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, right: 15),
                          child: Divider(
                            thickness: 0.2,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),

                        //Quick filter
                        Column(
                          children: [
                            ConstTitleWidget(
                              title: 'Quick filter',
                            ),
                            8.h,
                            ContainerWidet(
                              initialHeight: height * .055,
                              initialWidth: width,
                              backgroundColor: AppColors.backgroundColor,
                              borderWidth: 1,
                              borderColor: Colors.grey.withOpacity(0.5),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('This week'),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, right: 15),
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),

                        //Start date
                        // Column(
                        //   children: [
                        //     ConstTitleWidget(
                        //       title: 'Start date',
                        //     ),
                        //     8.h,
                        //     ContainerWidet(
                        //       initialHeight: height * .055,
                        //       initialWidth: width,
                        //       backgroundColor: AppColors.backgroundColor,
                        //       borderWidth: 1,
                        //       borderColor: Colors.grey.withOpacity(0.5),
                        //       child: Padding(
                        //         padding: const EdgeInsets.all(8.0),
                        //         child: Row(
                        //           mainAxisAlignment:
                        //               MainAxisAlignment.spaceBetween,
                        //           children: [
                        //             const Text('Select Date'),
                        //             SvgPicture.asset(
                        //               'assets/icons/calendar.svg',
                        //               height: 24,
                        //             )
                        //           ],
                        //         ),
                        //       ),
                        //     ),
                        //   ],
                        // ),

                        Column(
                          children: [
                            ConstTitleWidget(
                              title: 'Start date',
                            ),
                            const SizedBox(height: 8),
                            GestureDetector(
                              onTap: () async {
                                DateTime? selectedDate =
                                    await showModalBottomSheet<DateTime>(
                                  context: context,
                                  builder: (BuildContext context) {
                                    DateTime tempPickedDate = DateTime.now();

                                    return Container(
                                      height: 300,
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const GlobalTextWidget(
                                            title: 'Select Month & Date',
                                            fontSize: 14,
                                            fontWeight: 600,
                                          ),
                                          const SizedBox(height: 8),
                                          Expanded(
                                            child: Theme(
                                              data: Theme.of(context).copyWith(
                                                cupertinoOverrideTheme:
                                                    const CupertinoThemeData(
                                                  textTheme:
                                                      CupertinoTextThemeData(
                                                    dateTimePickerTextStyle:
                                                        TextStyle(
                                                      color: Colors
                                                          .pink, // Set selected text color to pink
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              child: CupertinoDatePicker(
                                                initialDateTime: DateTime.now(),
                                                mode: CupertinoDatePickerMode
                                                    .date,
                                                minimumDate: DateTime(
                                                    DateTime.now().year,
                                                    1,
                                                    1), // Restrict to the current year
                                                maximumDate: DateTime(
                                                    DateTime.now().year,
                                                    12,
                                                    31),
                                                onDateTimeChanged:
                                                    (DateTime newDate) {
                                                  tempPickedDate = newDate;
                                                },
                                              ),
                                            ),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.pop(
                                                  context, tempPickedDate);
                                            },
                                            child: const Text('Confirm'),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );

                                if (selectedDate != null) {
                                  // Handle the selected month and date
                                  print(
                                      "Selected Month & Date: ${selectedDate.month}-${selectedDate.day}");
                                }
                              },
                              child: ContainerWidet(
                                initialHeight: height * .055,
                                initialWidth: width,
                                backgroundColor: AppColors.backgroundColor,
                                borderWidth: 1,
                                borderColor: Colors.grey.withOpacity(0.5),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text('Select Date'),
                                      SvgPicture.asset(
                                        'assets/icons/calendar.svg',
                                        height: 24,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        5.h,

                        //end date
                        Column(
                          children: [
                            ConstTitleWidget(
                              title: 'End date',
                            ),
                            8.h,
                            ContainerWidet(
                              initialHeight: height * .055,
                              initialWidth: width,
                              backgroundColor: AppColors.backgroundColor,
                              borderWidth: 1,
                              borderColor: Colors.grey.withOpacity(0.5),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text('Select Date'),
                                    SvgPicture.asset(
                                      'assets/icons/calendar.svg',
                                      height: 24,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                        15.h,

                        ContainerWidet(
                          initialHeight: height * .05,
                          initialWidth: width,
                          backgroundColor: Colors.black,
                          borderWidth: 1,
                          borderColor: Colors.grey.withOpacity(0.5),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                                child: GlobalTextWidget(
                              title: 'Generate Statement',
                              fontSize: 15,
                              fontWeight: 400,
                              color: Colors.white,
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class StatementScreen extends StatefulWidget {
  const StatementScreen({super.key});

  @override
  State<StatementScreen> createState() => _StatementScreenState();
}

class _StatementScreenState extends State<StatementScreen>
    with SingleTickerProviderStateMixin {
  late double height;
  late double width;
  late TabController tabController;

  DateTime? selectedStartDate;
  DateTime? selectedEndDate;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  String formatDate(DateTime date) {
    String daySuffix = getDaySuffix(date.day);
    return DateFormat('d\'$daySuffix\' MMMM yyyy').format(date);
  }

  String getDaySuffix(int day) {
    if (day >= 11 && day <= 13) {
      return 'th'; // Special case for 11th, 12th, 13th
    }
    switch (day % 10) {
      case 1:
        return 'st';
      case 2:
        return 'nd';
      case 3:
        return 'rd';
      default:
        return 'th';
    }
  }

  Future<void> _selectDate(BuildContext context, bool isStartDate) async {
    DateTime initialDate = DateTime.now();
    DateTime? selectedDate = await showModalBottomSheet<DateTime>(
      context: context,
      builder: (BuildContext context) {
        DateTime tempPickedDate = initialDate;

        return Container(
          height: height * .45,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const GlobalTextWidget(
                title: 'Select Month & Date',
                fontSize: 14,
              ),
              const SizedBox(height: 8),
              Expanded(
                child: Theme(
                  data: Theme.of(context).copyWith(
                    cupertinoOverrideTheme: const CupertinoThemeData(
                      textTheme: CupertinoTextThemeData(
                        dateTimePickerTextStyle: TextStyle(
                          color: Colors.pink,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  child: CupertinoDatePicker(
                    initialDateTime: initialDate,
                    mode: CupertinoDatePickerMode.date,
                    minimumDate: DateTime(DateTime.now().year, 1, 1),
                    maximumDate: DateTime(DateTime.now().year, 12, 31),
                    onDateTimeChanged: (DateTime newDate) {
                      tempPickedDate = newDate;
                    },
                  ),
                ),
              ),

              ///
              ///
              ///
              ///
              ///
              ///
              GestureDetector(
                onTap: () {
                  Navigator.pop(context, tempPickedDate);
                },
                child: ContainerWidet(
                  initialHeight: height * .05,
                  initialWidth: width * .8,
                  borderColor: Colors.white,
                  borderRadious: 8,
                  backgroundColor: AppColors.purple,
                  child: const Center(
                    child: GlobalTextWidget(
                      title: 'Confrim',
                      fontSize: 15,
                      fontWeight: 500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );

    if (selectedDate != null) {
      setState(() {
        if (isStartDate) {
          selectedStartDate = selectedDate;
        } else {
          selectedEndDate = selectedDate;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const GlobalTextWidget(
          title: 'Statement',
          fontSize: 17,
          fontWeight: 600,
        ),
        centerTitle: true,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // Card
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ContainerWidet(
                  initialHeight: height * .6,
                  initialWidth: width * .9,
                  backgroundColor: Colors.white,
                  borderRadious: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Select Vendor
                        Column(
                          children: [
                            ConstTitleWidget(
                              title: 'Select Vendor',
                            ),
                            8.h,
                            GestureDetector(
                              onTap: () {
                                // Implement vendor selection
                              },
                              child: ContainerWidet(
                                initialHeight: height * .055,
                                initialWidth: width,
                                backgroundColor: AppColors.backgroundColor,
                                borderWidth: 1,
                                borderColor: Colors.grey.withOpacity(0.5),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Ex. Karnaphuli Jewellery ...'),
                                      Icon(Icons.arrow_drop_down_sharp),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 0.2,
                          color: Colors.grey.withOpacity(0.5),
                        ),

                        // Quick filter
                        Column(
                          children: [
                            ConstTitleWidget(
                              title: 'Quick filter',
                            ),
                            8.h,
                            ContainerWidet(
                              initialHeight: height * .055,
                              initialWidth: width,
                              backgroundColor: AppColors.backgroundColor,
                              borderWidth: 1,
                              borderColor: Colors.grey.withOpacity(0.5),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('This week'),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 0.5,
                          color: Colors.grey.withOpacity(0.5),
                        ),

                        // Start date
                        Column(
                          children: [
                            ConstTitleWidget(
                              title: 'Start date',
                            ),
                            const SizedBox(height: 8),
                            GestureDetector(
                              onTap: () => _selectDate(context, true),
                              child: ContainerWidet(
                                initialHeight: height * .055,
                                initialWidth: width,
                                backgroundColor: AppColors.backgroundColor,
                                borderWidth: 1,
                                borderColor: Colors.grey.withOpacity(0.5),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        selectedStartDate != null
                                            ? formatDate(selectedStartDate!)
                                            : 'Select Date',
                                      ),
                                      SvgPicture.asset(
                                        'assets/icons/calendar.svg',
                                        height: 24,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 5),

                        // End date
                        Column(
                          children: [
                            ConstTitleWidget(
                              title: 'End date',
                            ),
                            const SizedBox(height: 8),
                            GestureDetector(
                              onTap: () => _selectDate(context, false),
                              child: ContainerWidet(
                                initialHeight: height * .055,
                                initialWidth: width,
                                backgroundColor: AppColors.backgroundColor,
                                borderWidth: 1,
                                borderColor: Colors.grey.withOpacity(0.5),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        selectedEndDate != null
                                            ? formatDate(selectedEndDate!)
                                            : 'Select Date',
                                      ),
                                      SvgPicture.asset(
                                        'assets/icons/calendar.svg',
                                        height: 24,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 15),

                        // Generate Statement Button
                        ContainerWidet(
                          initialHeight: height * .05,
                          initialWidth: width,
                          backgroundColor: Colors.black,
                          borderWidth: 1,
                          borderColor: Colors.grey.withOpacity(0.5),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                              child: GlobalTextWidget(
                                title: 'Generate Statement',
                                fontSize: 15,
                                fontWeight: 400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
