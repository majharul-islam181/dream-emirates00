import 'package:dream_emirates/config/colors/colors.dart';
import 'package:dream_emirates/views/Account/account_screen.dart';
import 'package:dream_emirates/views/Trade/trade_screen_update.dart';
import 'package:dream_emirates/views/testing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../views.dart';

const Color inActiveIconColor = AppColors.inActiveIconColor;
const Color activeIconColor = AppColors.activeIconColor;

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key, required this.child});
  final Widget child;

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentSelectedIndex = 0;

  void updateCurrentIndex(int index) {
    setState(() {
      currentSelectedIndex = index;
    });
  }

  void _onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go('/home');
        break;
      case 1:
        context.go('/account');
        break;
      case 2:
        context.go('/trades');
        break;
      case 3:
        context.go('/more');
        break;
    }
  }

  int _getSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();
    if (location.startsWith('/home')) {
      return 0;
    }
    if (location.startsWith('/account')) {
      return 1;
    }
    if (location.startsWith('/trades')) {
      return 2;
    }
    if (location.startsWith('/more')) {
      return 3;
    }
    return 0; // Default to home page
  }

  final pages = [
    const DashboardScreen(),
    const AccountScreen(),
    // TradeScreenUpdate(
    //   dashboardVendorId: '0',
    //   selectedAccountIndex: 0,
    // ),
    const MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      // body: pages[_getSelectedIndex(context)],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => _onItemTapped(context, index),
        currentIndex: _getSelectedIndex(context),
        showSelectedLabels: true,
        iconSize: 10,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
          color: activeIconColor,
          fontFamily: 'Inter',
          fontSize: 12,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600,
          height: 1.33,
          letterSpacing: -0.24,
        ),
        unselectedLabelStyle: const TextStyle(
          color: inActiveIconColor,
          fontFamily: 'Inter',
          fontSize: 12,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          height: 1.33,
          letterSpacing: -0.24,
        ),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/navbar/home1.svg',
              colorFilter: const ColorFilter.mode(
                inActiveIconColor,
                BlendMode.srcIn,
              ),
              height: 25,
              width: 25,
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/navbar/home2.svg',
              colorFilter: const ColorFilter.mode(
                activeIconColor,
                BlendMode.srcIn,
              ),
              height: 27,
              width: 27,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/navbar/account1.svg',
              colorFilter: const ColorFilter.mode(
                inActiveIconColor,
                BlendMode.srcIn,
              ),
              height: 25,
              width: 25,
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/navbar/account2.svg',
              colorFilter: const ColorFilter.mode(
                activeIconColor,
                BlendMode.srcIn,
              ),
              height: 27,
              width: 27,
            ),
            label: "Account",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/navbar/trade1.svg",
              colorFilter: const ColorFilter.mode(
                inActiveIconColor,
                BlendMode.srcIn,
              ),
              height: 25,
              width: 25,
            ),
            activeIcon: SvgPicture.asset(
              "assets/icons/navbar/trade2.svg",
              colorFilter: const ColorFilter.mode(
                activeIconColor,
                BlendMode.srcIn,
              ),
              height: 27,
              width: 27,
            ),
            label: "Trades",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/navbar/more1.svg',
              colorFilter: const ColorFilter.mode(
                inActiveIconColor,
                BlendMode.srcIn,
              ),
              height: 25,
              width: 25,
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/navbar/more2.svg',
              colorFilter: const ColorFilter.mode(
                activeIconColor,
                BlendMode.srcIn,
              ),
              height: 27,
              width: 27,
            ),
            label: "More",
          ),
        ],
      ),
    );
  }

  // Method to navigate to TradeScreenUpdate with vendorId
  // void navigateToTradeScreen(String vendorId) {
  //   Navigator.of(context).push(
  //     MaterialPageRoute(
  //       builder: (context) => TradeScreenUpdate(
  //           dashboardVendorId: vendorId
  //           ),
  //     ),
  //   );
  // }
}
