// ignore_for_file: library_private_types_in_public_api

import 'dart:convert';

import 'package:dream_emirates/bloc/balance_bloc/balance_cubit.dart';
import 'package:dream_emirates/bloc/login_bloc/login_bloc.dart';
import 'package:dream_emirates/bloc/signup_bloc/signup_bloc.dart';
import 'package:dream_emirates/config/components/flutter_error.dart';
import 'package:dream_emirates/config/routes/app_route_config.dart';
import 'package:dream_emirates/config/themes/theme.dart';
import 'package:dream_emirates/repository/auth/signup/signup_http_api_repository.dart';
import 'package:dream_emirates/repository/auth/signup/signup_repository.dart';
import 'package:dream_emirates/repository/statement_repository/get_user_statement_http_api_repo.dart';
import 'package:dream_emirates/repository/statement_repository/get_user_statement_repo.dart';
import 'package:dream_emirates/services/session_manager/session_controller.dart';
import 'package:dream_emirates/utils/enums.dart';
import 'package:dream_emirates/views/Account/account_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'bloc/bloc_barrel.dart';
import 'repository/repository.dart';

/*
GetIt getIt = GetIt.instance;
void main() async {
  // FlutterError.onError = (FlutterErrorDetails details) {
  //   FlutterError.dumpErrorToConsole(details);
  //   runApp(FlutterErrorWidget(
  //     errorDetails: details,
  //   ));
  // };

  WidgetsFlutterBinding.ensureInitialized();
  servicesLocator();
  await SessionController().getUserFromPreference();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider<LoginBloc>(
        //   create: (_) {
        //     final loginBloc = LoginBloc(loginRepository: getIt());
        //     loginBloc
        //         .checkRememberMe(); // Check if user should be auto-logged in
        //     return loginBloc;
        //   },
        // ),
        BlocProvider<UserProfileBloc>(
          create: (context) => UserProfileBloc(userProfileRepository: getIt())
            ..add(FetchUserProfileEvent()),
        ),
        BlocProvider<VendorsAccountBloc>(
          create: (context) => VendorsAccountBloc(vendorsRepository: getIt())
            ..add(const FetchVendorsAccountEvent()),
        ),

        BlocProvider<PriceBloc>(
          create: (context) => getIt<PriceBloc>(),
        ),
        BlocProvider<BalanceCubit>(
          create: (context) => getIt<BalanceCubit>(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Dream Emirates',
        theme: lightThemeData(context),
        darkTheme: darkThemeData(context),
        themeMode: ThemeMode.light,
        routerConfig: router,
      ),
    );
  }
}

void servicesLocator() {
  getIt.registerLazySingleton<LoginRepository>(() => LoginHttpApiRepository());
  getIt.registerLazySingleton<ActiveTradeRepository>(
      () => ActiveTradeHttpApiRepository());
  getIt.registerLazySingleton<CompleteTradeRepository>(
      () => CompleteTradeHttpApiRepository());
  getIt.registerLazySingleton<PendingTradeRepository>(
      () => PendingTradeHttpApiRepository());

  getIt.registerLazySingleton<VendorsRepository>(
      () => VendorsHttpApiRepository());
  getIt.registerLazySingleton<UserProfileRepository>(
      () => UserProfileHttpApiRepository());
  getIt.registerLazySingleton<GetUserBalanceRepo>(
      () => GetUserBalanceHttpApiRepo());

  getIt.registerLazySingleton<PriceBloc>(() => PriceBloc());
  getIt.registerLazySingleton<BalanceCubit>(() => BalanceCubit());

  getIt.registerLazySingleton<GetUserStatementRepo>(
      () => GetUserStatementHttpApiRepo());
}
*/

// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

GetIt getIt = GetIt.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  servicesLocator(); // Initialize services early

  await SessionController().getUserFromPreference();
  runApp(const MyApp());
}

/*
void servicesLocator() {
  // Register repositories
  getIt.registerLazySingleton<LoginRepository>(() => LoginHttpApiRepository());
  getIt.registerLazySingleton<UserProfileRepository>(
      () => UserProfileHttpApiRepository());
  getIt.registerLazySingleton<VendorsRepository>(
      () => VendorsHttpApiRepository());

  getIt.registerLazySingleton<ActiveTradeRepository>(
      () => ActiveTradeHttpApiRepository());
  getIt.registerLazySingleton<CompleteTradeRepository>(
      () => CompleteTradeHttpApiRepository());
  getIt.registerLazySingleton<PendingTradeRepository>(
      () => PendingTradeHttpApiRepository());

  // Register blocs and immediately start data loading
  getIt.registerLazySingleton<UserProfileBloc>(() {
    final bloc =
        UserProfileBloc(userProfileRepository: getIt<UserProfileRepository>());
    bloc.add(FetchUserProfileEvent());
    return bloc;
  });

  getIt.registerLazySingleton<VendorsAccountBloc>(() {
    final bloc =
        VendorsAccountBloc(vendorsRepository: getIt<VendorsRepository>());
    bloc.add(const FetchVendorsAccountEvent());
    return bloc;
  });

  if (!getIt.isRegistered<ActiveTradeBloc>()) {
    getIt.registerLazySingleton<ActiveTradeBloc>(() {
      final bloc = ActiveTradeBloc(
          activeTradeRepository: getIt<ActiveTradeRepository>());
      bloc.add(FetchActiveTradeEvent(vendorId: '0'));
      return bloc;
    });
  }

  getIt.registerLazySingleton<PendingTradeBloc>(() {
    return PendingTradeBloc(
        pendingTradeRepository: getIt<PendingTradeRepository>())
      ..add(FetchPendingTradeEvent(vendorId: '0'));
  });

  getIt.registerLazySingleton<ActiveTradeBloc>(() {
    final bloc =
        ActiveTradeBloc(activeTradeRepository: getIt<ActiveTradeRepository>());
    bloc.add(FetchActiveTradeEvent(
        vendorId: '0')); // Trigger once during registration
    return bloc;
  });

  getIt.registerLazySingleton<BalanceCubit>(
      () => BalanceCubit()..updateBalance(0.0));

  getIt.registerLazySingleton<PriceBloc>(() => PriceBloc());
  getIt.registerLazySingleton<GetUserStatementRepo>(
      () => GetUserStatementHttpApiRepo());
}
*/
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return MultiBlocProvider(
      providers: [
        /*
        BlocProvider<UserProfileBloc>(create: (_) => getIt<UserProfileBloc>()),
        BlocProvider<VendorsAccountBloc>(
            create: (_) => getIt<VendorsAccountBloc>()),
        BlocProvider<BalanceCubit>(create: (_) => getIt<BalanceCubit>()),
        BlocProvider<PriceBloc>(create: (_) => getIt<PriceBloc>()),

        BlocProvider<SignupBloc>(
          create: (_) => getIt<SignupBloc>(),
        ),
*/

        BlocProvider<UserProfileBloc>(
            create: (_) => GetIt.instance<UserProfileBloc>()),
        BlocProvider<VendorsAccountBloc>(
            create: (_) => GetIt.instance<VendorsAccountBloc>()),
        BlocProvider<BalanceCubit>(
            create: (_) => GetIt.instance<BalanceCubit>()),
        BlocProvider<PriceBloc>(create: (_) => GetIt.instance<PriceBloc>()),
        BlocProvider<ActiveTradeBloc>(
            create: (_) => GetIt.instance<ActiveTradeBloc>()),
        BlocProvider<PendingTradeBloc>(
            create: (_) => GetIt.instance<PendingTradeBloc>()),
        BlocProvider<CompleteTradeBloc>(
            create: (_) => GetIt.instance<CompleteTradeBloc>()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Dream Emirates',
        theme: lightThemeData(context),
        darkTheme: darkThemeData(context),
        themeMode: ThemeMode.light,
        routerConfig: router,
      ),
    );
  }
}

void servicesLocator() {
  // Register repositories
  getIt.registerLazySingleton<LoginRepository>(() => LoginHttpApiRepository());
  getIt
      .registerLazySingleton<SignupRepository>(() => SignupHttpApiRepository());

  getIt.registerFactory<SignupBloc>(
      () => SignupBloc(signupRepository: getIt<SignupRepository>()));
  getIt.registerLazySingleton<UserProfileRepository>(
      () => UserProfileHttpApiRepository());
  getIt.registerLazySingleton<VendorsRepository>(
      () => VendorsHttpApiRepository());

  getIt.registerLazySingleton<ActiveTradeRepository>(
      () => ActiveTradeHttpApiRepository());
  getIt.registerLazySingleton<CompleteTradeRepository>(
      () => CompleteTradeHttpApiRepository());
  getIt.registerLazySingleton<PendingTradeRepository>(
      () => PendingTradeHttpApiRepository());

  // Register blocs and immediately start data loading
  if (!getIt.isRegistered<UserProfileBloc>()) {
    getIt.registerLazySingleton<UserProfileBloc>(() {
      final bloc = UserProfileBloc(
          userProfileRepository: getIt<UserProfileRepository>());
      bloc.add(FetchUserProfileEvent());
      return bloc;
    });
  }

  if (!getIt.isRegistered<VendorsAccountBloc>()) {
    getIt.registerLazySingleton<VendorsAccountBloc>(() {
      final bloc =
          VendorsAccountBloc(vendorsRepository: getIt<VendorsRepository>());
      bloc.add(const FetchVendorsAccountEvent());
      return bloc;
    });
  }

  if (!getIt.isRegistered<ActiveTradeBloc>()) {
    getIt.registerLazySingleton<ActiveTradeBloc>(() {
      final bloc = ActiveTradeBloc(
          activeTradeRepository: getIt<ActiveTradeRepository>());
      bloc.add(FetchActiveTradeEvent(vendorId: '1'));
      return bloc;
    });
  }

  if (!getIt.isRegistered<PendingTradeBloc>()) {
    getIt.registerLazySingleton<PendingTradeBloc>(() {
      return PendingTradeBloc(
          pendingTradeRepository: getIt<PendingTradeRepository>())
        ..add(FetchPendingTradeEvent(vendorId: '1'));
    });
  }

  if (!getIt.isRegistered<CompleteTradeBloc>()) {
    getIt.registerLazySingleton<CompleteTradeBloc>(() {
      final bloc = CompleteTradeBloc(
          completeTradeRepository: getIt<CompleteTradeRepository>());
      bloc.add(FetchCompleteTradeEvent(vendorId: '1'));
      return bloc;
    });
  }

  if (!getIt.isRegistered<BalanceCubit>()) {
    getIt.registerLazySingleton<BalanceCubit>(
        () => BalanceCubit()..updateBalance(0.0));
  }

  if (!getIt.isRegistered<PriceBloc>()) {
    getIt.registerLazySingleton<PriceBloc>(() => PriceBloc());
  }

  if (!getIt.isRegistered<GetUserStatementRepo>()) {
    getIt.registerLazySingleton<GetUserStatementRepo>(
        () => GetUserStatementHttpApiRepo());
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late UserProfileBloc userProfileBloc;
  late VendorsAccountBloc vendorsAccountBloc;
  late BalanceCubit balanceCubit;
  late ActiveTradeBloc activeTradeBloc;
  late PendingTradeBloc pendingTradeBloc;
  late CompleteTradeBloc completeTradeBloc;

  @override
  void initState() {
    super.initState();

    // Get bloc instances from GetIt
    userProfileBloc = GetIt.instance<UserProfileBloc>();
    vendorsAccountBloc = GetIt.instance<VendorsAccountBloc>();
    balanceCubit = GetIt.instance<BalanceCubit>();
    activeTradeBloc = GetIt.instance<ActiveTradeBloc>();
    pendingTradeBloc = GetIt.instance<PendingTradeBloc>();
    completeTradeBloc = GetIt.instance<CompleteTradeBloc>();

    // Preload data
    preloadData();
  }

  Future<void> preloadData() async {
    try {
      // Log when each state is completed
      print("Preloading data...");

      // await fetchChartData();

      // Set a timeout for the data loading
      await Future.wait([
        userProfileBloc.stream.firstWhere(
          (state) {
            print("User Profile State: ${state.getUserProfileData.status}");
            return state.getUserProfileData.status == Status.completed;
          },
        ),
        vendorsAccountBloc.stream.firstWhere(
          (state) {
            print("Vendor Account State: ${state.allVendorAccountList.status}");
            return state.allVendorAccountList.status == Status.completed;
          },
        ),
        balanceCubit.stream.firstWhere(
          (state) {
            print("Balance State: $state");
            return state is BalanceState;
          },
        ),
        activeTradeBloc.stream.firstWhere(
          (state) {
            print("active Account State: ${state.allActiveTrade.status}");
            return state.allActiveTrade.status == Status.completed;
          },
        ),
        pendingTradeBloc.stream.firstWhere(
          (state) {
            print("pending Account State: ${state.allPendingTrade.status}");
            return state.allPendingTrade.status == Status.completed;
          },
        ),
        completeTradeBloc.stream.firstWhere(
          (state) {
            print("complete Account State: ${state.allCompleteTrade.status}");
            return state.allCompleteTrade.status == Status.completed;
          },
        ),
      ]).timeout(
        const Duration(seconds: 3),
        onTimeout: () {
          print("Data loading timed out.");
          return []; // Return an empty list to satisfy the expected return type
        },
      );

      // Navigate if mounted
      if (mounted) {
        context.go('/home');
      }
    } catch (e) {
      print("Error during data loading: $e");
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Error loading data: $e")),
        );
      }
    }
  }

/*
  Future<void> preloadData() async {
    try {
      print("Preloading data...");

      // Wait for all blocs/cubits to reach the expected state
      await Future.wait([
        userProfileBloc.stream.firstWhere(
          (state) => state.getUserProfileData.status == Status.completed,
        ),
        vendorsAccountBloc.stream.firstWhere(
          (state) => state.allVendorAccountList.status == Status.completed,
        ),
        balanceCubit.stream.firstWhere(
          (state) => state is BalanceState,
        ),
        activeTradeBloc.stream.firstWhere(
          (state) => state.allActiveTrade.status == Status.completed,
        ),
      ]).timeout(
          const Duration(seconds: 10)); // Increased timeout for slower APIs

      if (mounted) {
        context.go('/home'); // Navigate to dashboard once all data is loaded
      }
    } catch (e) {
      print("Error during data loading: $e");

      // Check individual states after timeout
      final isUserProfileLoaded =
          userProfileBloc.state.getUserProfileData.status == Status.completed;
      final isVendorsLoaded =
          vendorsAccountBloc.state.allVendorAccountList.status ==
              Status.completed;
      final isActiveTradesLoaded =
          activeTradeBloc.state.allActiveTrade.status == Status.completed;

      if (!isUserProfileLoaded || !isVendorsLoaded || !isActiveTradesLoaded) {
        if (mounted) {
          //   showErrorDialog(); // Show error dialog with retry option
        }
      }
    }
  }
*/
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Dream Emirates',
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            CupertinoActivityIndicator(
              radius: 10.0, // Adjust the size of the spinner
            ),
          ],
        ),
      ),
    );
  }

/*
  Future<void> fetchChartData() async {
    int endTime = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    int startTime = endTime - 1800; // Last 30 minutes

    final response = await http.get(Uri.parse(
        'http://pricefeed.dreamemirates.com/api/v1/market-price/?startTime=$startTime&endTime=$endTime'));

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);

      if (jsonResponse['success']) {
        List<ChartData> tempChartData = [];
        double tempMinPrice = double.infinity;
        double tempMaxPrice = double.negativeInfinity;

        for (var item in jsonResponse['data']) {
          final time = DateTime.fromMillisecondsSinceEpoch(
              int.parse(item['time']) * 1000);
          final ask = double.parse(item['ask']);
          tempChartData.add(ChartData(time, ask));

          tempMinPrice = ask < tempMinPrice ? ask : tempMinPrice;
          tempMaxPrice = ask > tempMaxPrice ? ask : tempMaxPrice;
        }

        setState(() {
          chartData = tempChartData;
          minPrice = tempMinPrice;
          maxPrice = tempMaxPrice;
        });
      }
    } else {
      throw Exception('Failed to load chart data.');
    }
  }
*/
}
