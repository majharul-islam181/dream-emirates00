// ignore_for_file: override_on_non_overriding_member

part of 'statement_bloc.dart';

abstract class StatementEvent {
  const StatementEvent();
  @override
  List<Object> get props => [];
}

class FetchStatementEvent extends StatementEvent {
  String vendorId;
  FetchStatementEvent({required this.vendorId});

  @override
  List<Object> get props => [vendorId];
}
