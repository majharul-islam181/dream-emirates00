part of 'get_user_balance_bloc.dart';

class GetUserBalanceState extends Equatable {
  final PostApiStatus postApiStatus;
  final String message;
  final ApiResponse<GetUserBalanceModel> getUserProfileBalance;

  const GetUserBalanceState(
      {required this.getUserProfileBalance,
      this.postApiStatus = PostApiStatus.initial,
      this.message = ''});

  GetUserBalanceState copyWith({
    ApiResponse<GetUserBalanceModel>? getUserProfileBalance,
    PostApiStatus? postApiStatus,
    String? message,
  }) {
    return GetUserBalanceState(
      getUserProfileBalance:
          getUserProfileBalance ?? this.getUserProfileBalance,
      postApiStatus: postApiStatus ?? this.postApiStatus,
      message: message ?? this.message,
    );
  }

  @override
  List<Object?> get props => [
        getUserProfileBalance,
        postApiStatus,
        message,
      ];
}
