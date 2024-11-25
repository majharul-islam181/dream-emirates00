part of 'vendors_account_bloc.dart';

class VendorsAccountState extends Equatable {
  final int accountId;

  final String accountName;
  final String logoUrl;
  final PostApiStatus postApiStatus;
  final String message;
  final ApiResponse<VendorsModel> allVendorAccountList;

  const VendorsAccountState(
      {required this.allVendorAccountList,
      this.accountId = 0,
      this.accountName = '',
      this.logoUrl = '',
      this.postApiStatus = PostApiStatus.initial,
      this.message = ''});

  VendorsAccountState copyWith(
      {ApiResponse<VendorsModel>? allVendorAccountList,
      int? accountId,
      String? accountName,
      PostApiStatus? postApiStatus,
      String? logoUrl,
      String? message,
      int? quantity}) {
    return VendorsAccountState(
      allVendorAccountList: allVendorAccountList ?? this.allVendorAccountList,
      accountId: accountId ?? this.accountId,
      accountName: accountName ?? this.accountName,
      logoUrl: logoUrl ?? this.logoUrl,
      postApiStatus: postApiStatus ?? this.postApiStatus,
      message: message ?? this.message,
    );
  }

  @override
  List<Object?> get props => [
        allVendorAccountList,
        accountId,
        accountName,
        postApiStatus,
        message,
      ];
}
