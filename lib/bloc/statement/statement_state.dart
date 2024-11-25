part of 'statement_bloc.dart';

class StatementState extends Equatable {
  final PostApiStatus postApiStatus;
  final String message;
  final ApiResponse<StatementModel> getStatement;

  const StatementState(
      {required this.getStatement,
      this.postApiStatus = PostApiStatus.initial,
      this.message = ''});

  StatementState copyWith({
    ApiResponse<StatementModel>? getStatement,
    PostApiStatus? postApiStatus,
    String? message,
  }) {
    return StatementState(
      getStatement: getStatement ?? this.getStatement,
      postApiStatus: postApiStatus ?? this.postApiStatus,
      message: message ?? this.message,
    );
  }

  @override
  List<Object?> get props => [
        getStatement,
        postApiStatus,
        message,
      ];
}
