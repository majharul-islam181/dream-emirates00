import 'package:dream_emirates/config/colors/colors.dart';
import 'package:dream_emirates/config/extension/spaceWidthExtension.dart';
import 'package:dream_emirates/views/More/widgets/const_title_widget.dart';
import 'package:dream_emirates/views/widgets/containerWidget.dart';
import 'package:dream_emirates/views/widgets/global_text_widget.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen>
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
          title: 'Calculator',
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
                  initialHeight: height * .75,
                  initialWidth: width * .9,
                  backgroundColor: Colors.white,
                  borderRadious: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //balance
                        Column(
                          children: [
                            ConstTitleWidget(
                              title: 'Balance',
                              title1: '0+',
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
                                child: Text('1234'),
                              ),
                            ),
                          ],
                        ),

                        5.h,

                        //Trade type
                        Column(
                          children: [
                            ConstTitleWidget(
                              title: 'Trade Type',
                            ),
                            8.h,
                            _getTabbar(),
                          ],
                        ),

                        5.h,

                        //Metal type
                        Column(
                          children: [
                            ConstTitleWidget(
                              title: 'Metal type',
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
                                child: Text('1234'),
                              ),
                            ),
                          ],
                        ),

                        5.h,

                        //Quantity
                        Column(
                          children: [
                            ConstTitleWidget(
                              title: 'Quantity',
                            ),
                            8.h,
                            ContainerWidet(
                              initialHeight: height * .045,
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
                                    Icon(
                                      Icons.remove,
                                      size: 20,
                                    ),
                                    GlobalTextWidget(
                                      title: '1',
                                      fontSize: 14,
                                      fontWeight: 400,
                                    ),
                                    Icon(
                                      Icons.add,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                        5.h,

                        //Quantity
                        Column(
                          children: [
                            ConstTitleWidget(
                              title: 'Margin limit',
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
                                child: Text('2440.44'),
                              ),
                            ),
                          ],
                        ),

                        5.h,

                        //Quantity
                        Column(
                          children: [
                            ConstTitleWidget(
                              title: 'Net balance',
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
                                child: Text('24440.0'),
                              ),
                            ),
                          ],
                        ),

                        5.h,

                        ContainerWidet(
                          initialHeight: height * .055,
                          initialWidth: width,
                          backgroundColor: Colors.black,
                          borderWidth: 1,
                          borderColor: Colors.grey.withOpacity(0.5),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                                child: GlobalTextWidget(
                              title: 'Reset',
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

  _getTabbar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(20),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Container(
              height: 43,
              margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: AppColors.backgroundColor,
                // color: Colors.red,
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: TabBar(
                  controller: tabController,
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  indicator: const BoxDecoration(
                    // color: Colors.green,
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.black54,
                  tabs: const [
                    Tab(
                      text: 'Buy',
                    ),
                    Tab(
                      text: 'Sell',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
