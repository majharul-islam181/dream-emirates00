import 'package:dream_emirates/main.dart';
import 'package:dream_emirates/services/session_manager/session_controller.dart';
import 'package:dream_emirates/views/Account/account_screen.dart';
import 'package:dream_emirates/views/Additional/ErrorPath/error_path.dart';
import 'package:dream_emirates/views/Dashboard/dashboard_screen.dart';
import 'package:dream_emirates/views/More/more_screen.dart';
import 'package:dream_emirates/views/More/pages/statement_screen.dart';
import 'package:dream_emirates/views/Navbar/navbar.dart';
import 'package:dream_emirates/views/PasswordReset/password_reset_screen.dart';
import 'package:dream_emirates/views/SignIn/signin_screen.dart';
import 'package:dream_emirates/views/SoftEdgeBlurScreen.dart';
import 'package:dream_emirates/views/Trade/trade_screen_update.dart';
import 'package:dream_emirates/views/Verify/verify_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// bool isAuthenticated = false;
final GoRouter router = GoRouter(
  // initialLocation: '/home',
  initialLocation: '/splash',
  redirect: (context, state) async {
    // Check if the user is logged in
    final SessionController sessionController = SessionController();
    await sessionController.getUserFromPreference();

    // Determine the login status
    final bool isLoggedIn = sessionController.isLogin;
    // bool isLoggedIn = true;

    if (kDebugMode) {
      print('isLoggedin from route: $isLoggedIn');
    }

    // If the user is not logged in, and the current location is not '/login', redirect to '/login'
    if (!isLoggedIn && state.uri.toString() != '/login') {
      return '/login';
    }

    // If the user is logged in, and the current location is '/login', redirect to '/home'
    if (isLoggedIn && state.uri.toString() == '/login') {
      return '/home';
    }

    // No redirection needed
    return null;
  },
  routes: [
    GoRoute(
      path: '/splash',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (context, state) {
        return const SigninScreen();
      },
    ),
    GoRoute(
      path: '/forgot-password',
      name: 'forgot-password',
      builder: (context, state) {
        return const PasswordResetScreen();
      },
    ),
    ShellRoute(
      builder: (context, state, child) {
        return BottomNavScreen(child: child);
      },
      routes: [
        GoRoute(
          path: '/home',
          name: 'home',
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: const DashboardScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
            );
          },
        ),

        // GoRoute(
        //   path: '/home',
        //   name: 'home',
        //   pageBuilder: (context, state) {
        //     return CustomTransitionPage(
        //       key: state.pageKey,
        //       child: const DashboardScreen(),
        //       transitionsBuilder:
        //           (context, animation, secondaryAnimation, child) {
        //         // Add a smooth curve to the animation
        //         final curvedAnimation = CurvedAnimation(
        //           parent: animation,
        //           curve: Curves.easeInOut, // Smooth and fluid transition
        //         );

        //         // Slide Animation: From left to right
        //         final slideAnimation = Tween<Offset>(
        //           begin: const Offset(-1.0, 0.0), // Starts from the left
        //           end: Offset.zero, // Ends at its normal position
        //         ).animate(curvedAnimation);

        //         return SlideTransition(
        //           position: slideAnimation,
        //           child: child,
        //         );
        //       },
        //     );
        //   },
        // ),

        GoRoute(
          path: '/account',
          name: 'account',
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: const AccountScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
            );
          },
        ),

        // GoRoute(
        //   path: '/account',
        //   name: 'account',
        //   pageBuilder: (context, state) {
        //     return CustomTransitionPage(
        //       key: state.pageKey,
        //       child: const AccountScreen(),
        //       transitionsBuilder:
        //           (context, animation, secondaryAnimation, child) {
        //         // Slide Animation
        //         final slideAnimation = Tween<Offset>(
        //           begin: const Offset(0.0, 1.0), // Starts from the bottom
        //           end: Offset.zero, // Ends at its normal position
        //         ).animate(animation);

        //         return SlideTransition(
        //           position: slideAnimation,
        //           child: child,
        //         );
        //       },
        //     );
        //   },
        // ),

        GoRoute(
  path: '/trades',
  name: 'trades',
  pageBuilder: (context, state) {
    final String dashboardVendorId =
        state.pathParameters['dashboardVendorId'] ?? '0';
    final String selectedAccountIndexStr =
        state.pathParameters['selectedAccountIndex'] ?? '0';

    // Ensure selectedAccountIndex is a valid integer
    final int selectedAccountIndex = int.tryParse(selectedAccountIndexStr) ?? 0;

    // Return the page with safe parameters
    return CustomTransitionPage(
      key: state.pageKey,
      child: TradeScreenUpdate(
        dashboardVendorId: dashboardVendorId,
        selectedAccountIndex: selectedAccountIndex,
      ),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    );
  },
),

/*
        GoRoute(
          path: '/trades',
          name: 'trades',
          pageBuilder: (context, state) {
            final String dashboardVendorId =
                state.pathParameters['dashboardVendorId'] ?? '0';
            final String selectedAccountIndex =
                state.pathParameters['selectedAccountIndex'] ?? '0';

                

            return CustomTransitionPage(
              key: state.pageKey,
              child: TradeScreenUpdate(
                dashboardVendorId: dashboardVendorId,
                selectedAccountIndex: int.parse(selectedAccountIndex),
              ),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
            );
          },
        ),


*/
        // GoRoute(
        //   path: '/trades',
        //   name: 'trades',
        //   pageBuilder: (context, state) {
        //     final String dashboardVendorId =
        //         state.pathParameters['dashboardVendorId'] ?? '0';
        //     final String selectedAccountIndex =
        //         state.pathParameters['selectedAccountIndex'] ?? '0';

        //     return CustomTransitionPage(
        //       key: state.pageKey,
        //       child: TradeScreenUpdate(
        //         dashboardVendorId: dashboardVendorId,
        //         selectedAccountIndex: int.parse(selectedAccountIndex),
        //       ),
        //       transitionsBuilder:
        //           (context, animation, secondaryAnimation, child) {
        //         // Slide Animation
        //         final slideAnimation = Tween<Offset>(
        //           begin: const Offset(1.0, 0.0), // Starts from the right
        //           end: Offset.zero, // Ends at its normal position
        //         ).animate(animation);

        //         return SlideTransition(
        //           position: slideAnimation,
        //           child: child,
        //         );
        //       },
        //     );
        //   },
        // ),

        GoRoute(
          path: '/trades/:dashboardVendorId/:selectedAccountIndex',
          name: 'tradesWithParams',
          pageBuilder: (context, state) {
            final String dashboardVendorId =
                state.pathParameters['dashboardVendorId'] ?? '0';
            final String selectedAccountIndex =
                state.pathParameters['selectedAccountIndex'] ?? '0';

            return CustomTransitionPage(
              key: state.pageKey,
              child: TradeScreenUpdate(
                dashboardVendorId: dashboardVendorId,
                selectedAccountIndex: int.parse(selectedAccountIndex),
              ),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
            );
          },
        ),
        GoRoute(
          path: '/more',
          name: 'more',
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: const MoreScreen(),
              // child: const SoftEdgeBlurScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },

              // transitionsBuilder:
              //     (context, animation, secondaryAnimation, child) {
              //   // Slide Animation
              //   final slideAnimation = Tween<Offset>(
              //     begin: const Offset(1.0, 0.0), // Starts from the right
              //     end: Offset.zero, // Ends at its normal position
              //   ).animate(animation);

              //   return SlideTransition(
              //     position: slideAnimation,
              //     child: child,
              //   );
              // },
            );
          },
        ),

        GoRoute(
          path: '/more/kyc',
          name: 'kyc',
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: VerifyScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
            );
          },
        ),
        GoRoute(
          path: '/more/testing',
          name: 'tesing',
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: const SoftEdgeBlurScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
            );
          },
        ),
        GoRoute(
          path: '/more/statement',
          name: 'statement',
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: const StatementScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0, 1),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                );
              },
            );
          },
        ),
      ],
    ),
  ],
  errorPageBuilder: (context, state) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: const Error404Screen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0.0, 1.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
    );
  },
);
