part of 'vendors_account_bloc.dart';

abstract class VendorsAccountEvent {
  const VendorsAccountEvent();
  List<Object> get props => [];
}

class FetchVendorsAccountEvent extends VendorsAccountEvent {
  const FetchVendorsAccountEvent();

  @override
  List<Object> get props => [];
}
