import 'package:flutter_bloc/flutter_bloc.dart';

/*
// State class to hold the balance data
class BalanceState {
  final double balance;

  BalanceState(this.balance);
}

// Cubit class for managing the balance
class BalanceCubit extends Cubit<BalanceState> {
  // Initial balance is set to 0.0
  BalanceCubit() : super(BalanceState(0.0));

  // Method to update the balance
  void updateBalance(double newBalance) {
    emit(BalanceState(newBalance));
  }
}



import 'package:flutter_bloc/flutter_bloc.dart';

class BalanceCubit extends Cubit<BalanceState> {
  BalanceCubit() : super(BalanceState(balance: 0.0));

  // Method to fetch balance from an API
  Future<void> fetchBalance() async {
    try {
      emit(BalanceState(balance: 0.0)); // Optional: Show loading state

      // Simulate an API call (replace with real API call)
      final fetchedBalance = await _fetchBalanceFromApi();

      // Update the state with the fetched balance
      emit(BalanceState(balance: fetchedBalance));
    } catch (e) {
      // Handle error if needed
      print('Error fetching balance: $e');
    }
  }

  // Example function simulating an API call (replace this with actual API integration)
  Future<double> _fetchBalanceFromApi() async {
    await Future.delayed(
        const Duration(seconds: 2)); // Simulating network delay
    return 1234.56; // Simulated fetched balance
  }

  // Method to update balance manually
  void updateBalance(double newBalance) {
    emit(BalanceState(balance: newBalance));
  }
}
*/

class BalanceState {
  final double balance;

  BalanceState({required this.balance});
}

class BalanceCubit extends Cubit<BalanceState> {
  BalanceCubit() : super(BalanceState(balance: 0.0));

  void updateBalance(double newBalance) {
    emit(BalanceState(balance: newBalance));
  }
}
