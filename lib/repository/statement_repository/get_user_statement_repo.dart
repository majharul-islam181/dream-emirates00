import 'package:dream_emirates/models/Statement/statement_model.dart';

abstract class GetUserStatementRepo {
  Future<StatementModel> getUserStatement(String vendorId);
}
