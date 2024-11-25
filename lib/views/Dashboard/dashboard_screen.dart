// ignore_for_file: must_be_immutable

import 'package:dream_emirates/models/models_barrel.dart';
import 'package:dream_emirates/utils/enums.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import '../../bloc/bloc_barrel.dart';
import 'widgets/widgets.dart';
/*
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
    with AutomaticKeepAliveClientMixin {
  late UserProfileBloc userProfileBloc;
  late VendorsAccountBloc vendorsAccountBloc;
  late PriceBloc priceBloc;
  late BalanceCubit balanceCubit;
  String? cachedUserName;
  String? cachedImageUrl;
  late bool _isLoading;
  late double height, width;

  @override
  void initState() {
    _loadCachedProfileData();
    userProfileBloc = UserProfileBloc(userProfileRepository: getIt())
      ..add(FetchUserProfileEvent());
    vendorsAccountBloc = VendorsAccountBloc(vendorsRepository: getIt())
      ..add(const FetchVendorsAccountEvent());

    priceBloc = GetIt.instance<PriceBloc>();
    balanceCubit = GetIt.instance<BalanceCubit>();

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });

    // Fetch profile data if no cache exists
    if (cachedUserName == null || cachedImageUrl == null) {
      userProfileBloc.add(FetchUserProfileEvent());
    }
    super.initState();
  }

  Future<void> _loadCachedProfileData() async {
    final prefs = await SharedPreferences.getInstance();
    cachedUserName = prefs.getString('cachedUserName');
    cachedImageUrl = prefs.getString('cachedImageUrl');
  }

  Future<void> _cacheUserProfile(String name, String imageUrl) async {
    await _clearCachedProfileData();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('cachedUserName', name);
    await prefs.setString('cachedImageUrl', imageUrl);
  }

  Future<void> _clearCachedProfileData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('cachedUserName');
    await prefs.remove('cachedImageUrl');
  }

  @override
  void dispose() {
    userProfileBloc.close();
    vendorsAccountBloc.close();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    super.build(context);

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: MultiBlocProvider(
        providers: [
          BlocProvider.value(value: userProfileBloc),
          BlocProvider.value(value: vendorsAccountBloc),
          BlocProvider.value(value: priceBloc),
          BlocProvider.value(value: balanceCubit),
        ],
        child: Stack(
          children: [
            BackgroundWidgetDashboard(),
            Padding(
              padding: const EdgeInsets.only(top: 66.0, left: 15, right: 15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildUserProfileSection(),
                  const SizedBox(height: 10),
                  Expanded(
                    child: _buildVendorAccountsSection(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ContainerWidet _getAccountCardSkelton() {
    return ContainerWidet(
      initialHeight: height * .22,
      initialWidth: width * .95,
      backgroundColor: Colors.white,
      borderWidth: 0,
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 8, right: 8, bottom: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Skelton(height: height * .045, width: width * .1),
                10.w,
                Skelton(height: height * .02, width: width * .6),
                10.w,
                Skelton(height: height * .02, width: width * .1),
              ],
            ),
            12.h,
            Skelton(height: height * .04, width: width * .3),
            12.h,
            Skelton(height: height * .005, width: width * .9),
            12.h,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Skelton(height: height * .04, width: width * .3),
                Skelton(height: height * .04, width: width * .3),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _getAccountBalanceSkelton() {
    return AccountCardSkelton();
  }

  Widget _buildUserProfileSection() {
    return BlocBuilder<UserProfileBloc, UserProfileState>(
      builder: (context, state) {
        if (cachedUserName != null && cachedImageUrl != null) {
          // If cached data is available, use it
          return _buildProfileWidget(cachedUserName!, cachedImageUrl!);
        }

        switch (state.getUserProfileData.status) {
          case Status.loading:
            return Center(child: _getAccountBalanceSkelton());

          case Status.error:
            return _buildErrorWidget(
              state.getUserProfileData.message.toString(),
              onRetry: () => userProfileBloc.add(FetchUserProfileEvent()),
            );
          case Status.completed:
            final user = state.getUserProfileData.data!.data!.user;
            final name = user!.name;
            final imageUrl = user.profileImage ?? 'assets/icons/no-photo.png';

            // Cache the data for future use
            _cacheUserProfile(name, imageUrl.toString());

            return _buildProfileWidget(name, imageUrl.toString());
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }

  Widget _buildProfileWidget(String name, String imageUrl) {
    return Column(
      children: [
        ImageWithTitle(name: name, imageUrl: imageUrl),
        const SizedBox(height: 30),
        BlocBuilder<BalanceCubit, BalanceState>(
          builder: (context, balanceState) {
            final balance = balanceState.balance;
            String formattedBalance = formatBalance(balance);
            return MainBalanceCard(
              currency: formattedBalance,
              depositeTap: () {
                if (kDebugMode) {
                  print('Pressed deposit button');
                }
              },
            );
          },
        ),
      ],
    );
  }

  double _calculateTotalBalance(BuildContext context) {
    double totalBalance = 0.0;
    final vendorsState = context.read<VendorsAccountBloc>().state;

    if (vendorsState.allVendorAccountList.status == Status.completed) {
      final allAccountList = vendorsState.allVendorAccountList.data!.data;

      // Sum up the balances
      for (var account in allAccountList) {
        if (account.users.isNotEmpty) {
          final userWallet = account.users[0].wallet.first;
          final virtualTradingBalance = userWallet.virtualTrading ?? 0.0;
          if (kDebugMode) {
            print(
                'Account ID: ${account.id}, Virtual Trading Balance: $virtualTradingBalance');
          }

          totalBalance += virtualTradingBalance;
        }
      }

      if (kDebugMode) {
        print('Calculated Total Balance: $totalBalance');
      }

      if (!context.read<BalanceCubit>().isClosed) {
        context.read<BalanceCubit>().updateBalance(totalBalance);
      }
    }

    return totalBalance;
  }

  Widget _buildVendorAccountsSection() {
    return BlocBuilder<VendorsAccountBloc, VendorsAccountState>(
      builder: (context, state) {
        switch (state.allVendorAccountList.status) {
          case Status.loading:
            return ListView.separated(
              padding: EdgeInsets.zero,
              itemCount: 5,
              itemBuilder: (context, index) => _getAccountCardSkelton(),
              separatorBuilder: (context, index) => const SizedBox(height: 10),
            );
          case Status.error:
            return _buildErrorWidget(
              state.allVendorAccountList.message.toString(),
              onRetry: () =>
                  vendorsAccountBloc.add(const FetchVendorsAccountEvent()),
            );
          case Status.completed:
            _calculateTotalBalance(context);

            final allAccountList = state.allVendorAccountList.data!.data;
            return ListView.builder(
              padding: EdgeInsets.zero,
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: allAccountList.length,
              itemBuilder: (context, index) {
                return _buildVendorAccountItem(allAccountList[index], index);
              },
            );
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }

  Widget _buildVendorAccountItem(Company account, int index) {
    final userWallet =
        account.users.isNotEmpty ? account.users[0].wallet.first : null;
    final virtualTradingValue = userWallet?.virtualTrading ?? 0.0;

    return GestureDetector(
      onTap: () {
        //venderid
        if (kDebugMode) {
          print('account id : from dashboard ::::::::::::::${account.id}');
        }

        context.go('/trades/${account.id.toString()}/${index.toString()}');
      },
      child: BlocBuilder<PriceBloc, PriceState>(
        builder: (context, priceState) {
          double buyRate = 0;
          double sellRate = 0;
          double highRate = 0;
          double lowRate = 0;

          if (priceState is PriceUpdated) {
            buyRate = priceState.askPrice;
            sellRate = priceState.bidPrice;
            highRate = priceState.highPrice;
            lowRate = priceState.lowPrice;
          } else if (priceState is PriceLoading) {
            return const CircularProgressIndicator();
          } else if (priceState is PriceError) {
            // Handle error state if needed
            return _buildErrorWidget(priceState.message);
          }

          return AccountsBalance(
            accountbalance: formatBalance(virtualTradingValue),
            imageUrl: account.logo?.path ?? '',
            accountName: account.name,
            buyRate: formatBalance(buyRate),
            sellRate: formatBalance(sellRate),
            highRate: formatBalance(highRate),
            lowRate: formatBalance(lowRate),
          );
        },
      ),
    );
  }

  Widget _buildErrorWidget(String message, {VoidCallback? onRetry}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message),
          if (onRetry != null)
            TextButton(onPressed: onRetry, child: const Text("Retry")),
        ],
      ),
    );
  }

  String formatBalance(double balance) {
    return balance.toStringAsFixed(2);
  }
}

class Skelton extends StatelessWidget {
  Skelton({
    super.key,
    required this.height,
    required this.width,
    this.borderRadious = 12,
  });

  final double height;
  final double width;
  double borderRadious;

  @override
  Widget build(BuildContext context) {
    return ContainerWidet(
      initialHeight: height,
      initialWidth: width,
      backgroundColor: Colors.black.withOpacity(0.04),
      borderColor: Colors.black.withOpacity(0.04),
      borderRadious: borderRadious,
      borderWidth: 0,
    );
  }
}



*/

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: MultiBlocProvider(
        providers: [
          BlocProvider.value(value: GetIt.instance<UserProfileBloc>()),
          BlocProvider.value(value: GetIt.instance<VendorsAccountBloc>()),
          BlocProvider.value(value: GetIt.instance<BalanceCubit>()),
          BlocProvider.value(value: GetIt.instance<PriceBloc>()),
        ],
        child: Stack(
          children: [
            BackgroundWidgetDashboard(),
            Padding(
              padding: const EdgeInsets.only(top: 66.0, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildUserProfileSection(),
                  const SizedBox(height: 10),
                  Expanded(child: _buildVendorAccountsSection()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserProfileSection() {
    return BlocBuilder<UserProfileBloc, UserProfileState>(
      builder: (context, state) {
        if (state.getUserProfileData.status == Status.completed) {
          final user = state.getUserProfileData.data!.data!.user!;
          final name = user.name;
          final imageUrl =
              user.profileImage?.toString() ?? 'assets/icons/no-photo.png';
          return _buildProfileWidget(name, imageUrl);
        } else if (state.getUserProfileData.status == Status.error) {
          return _buildErrorWidget(
            state.getUserProfileData.message.toString(),
            onRetry: () =>
                context.read<UserProfileBloc>().add(FetchUserProfileEvent()),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }

  Widget _buildVendorAccountsSection() {
    return BlocBuilder<VendorsAccountBloc, VendorsAccountState>(
      builder: (context, state) {
        if (state.allVendorAccountList.status == Status.completed) {
          final allAccountList = state.allVendorAccountList.data!.data;
          _calculateTotalBalance(context);
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: allAccountList.length,
            itemBuilder: (context, index) =>
                _buildVendorAccountItem(allAccountList[index], index),
          );
        } else if (state.allVendorAccountList.status == Status.error) {
          return _buildErrorWidget(
            state.allVendorAccountList.message.toString(),
            onRetry: () => context
                .read<VendorsAccountBloc>()
                .add(const FetchVendorsAccountEvent()),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }

  Widget _buildVendorAccountItem(Company account, int index) {
    final userWallet =
        account.users.isNotEmpty ? account.users[0].wallet.first : null;
    final virtualTradingValue = userWallet?.virtualTrading ?? 0.0;

    return BlocBuilder<PriceBloc, PriceState>(
      builder: (context, priceState) {
        String buyRate = "0.00";
        String sellRate = "0.00";
        String highRate = "0.00";
        String lowRate = "0.00";

        if (priceState is PriceUpdated) {
          buyRate = priceState.askPrice.toStringAsFixed(2);
          sellRate = priceState.bidPrice.toStringAsFixed(2);
          highRate = priceState.highPrice.toStringAsFixed(2);
          lowRate = priceState.lowPrice.toStringAsFixed(2);
        } else if (priceState is PriceError) {
          if (kDebugMode) {
            print("Error: ${priceState.message}");
          }
        }

        return GestureDetector(
          onTap: () {
            if (kDebugMode) {
              print('Account ID: from dashboard  ${account.id}, Index: $index');
            }
            context.go('/trades/${account.id}/$index');
          },
          child: AccountsBalance(
            accountbalance: formatBalance(virtualTradingValue),
            imageUrl: account.logo?.path ?? '',
            accountName: account.name,
            buyRate: buyRate,
            sellRate: sellRate,
            highRate: highRate,
            lowRate: lowRate,
          ),
        );
      },
    );
  }

  Widget _buildErrorWidget(String message, {VoidCallback? onRetry}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message),
          if (onRetry != null)
            TextButton(onPressed: onRetry, child: const Text("Retry")),
        ],
      ),
    );
  }

  String formatBalance(double balance) {
    return balance.toStringAsFixed(2);
  }

  Widget _buildProfileWidget(String name, String imageUrl) {
    return Column(
      children: [
        ImageWithTitle(name: name, imageUrl: imageUrl),
        const SizedBox(height: 30),
        BlocBuilder<BalanceCubit, BalanceState>(
          builder: (context, balanceState) {
            final balance = balanceState.balance;
            String formattedBalance = formatBalance(balance);
            return MainBalanceCard(
              currency: formattedBalance,
              depositeTap: () {
                if (kDebugMode) {
                  print('Pressed deposit button');
                }
              },
            );
          },
        ),
      ],
    );
  }

  double _calculateTotalBalance(BuildContext context) {
    double totalBalance = 0.0;
    final vendorsState = context.read<VendorsAccountBloc>().state;

    if (vendorsState.allVendorAccountList.status == Status.completed) {
      final allAccountList = vendorsState.allVendorAccountList.data!.data;

      // Sum up the balances
      for (var account in allAccountList) {
        if (account.users.isNotEmpty) {
          final userWallet = account.users[0].wallet.first;
          final virtualTradingBalance = userWallet.virtualTrading ?? 0.0;
          if (kDebugMode) {
            print(
                'Account ID: ${account.id}, Virtual Trading Balance: $virtualTradingBalance');
          }

          totalBalance += virtualTradingBalance;
        }
      }

      if (kDebugMode) {
        print('Calculated Total Balance: $totalBalance');
      }

      if (!context.read<BalanceCubit>().isClosed) {
        context.read<BalanceCubit>().updateBalance(totalBalance);
      }
    }

    return totalBalance;
  }
}
