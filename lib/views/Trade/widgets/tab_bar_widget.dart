import 'package:dream_emirates/config/colors/colors.dart';
import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  TabBarWidget({super.key, required this.tabController});
  late TabController tabController;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(25),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Container(
              height: 45,
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
                      text: 'Open',
                    ),
                    Tab(
                      text: 'Pending',
                    ),
                    Tab(
                      text: 'Closed',
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
