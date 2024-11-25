import 'package:dream_emirates/models/vendors/vendors_model.dart';

abstract class VendorsRepository {
  Future<VendorsModel> getVendorsAccount();
}
