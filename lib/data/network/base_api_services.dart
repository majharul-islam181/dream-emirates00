abstract class BaseApiServices {
  // Updated to accept vendorId and token as optional arguments
  Future<dynamic> getApi(String url, String vendorId, String token);
  Future<dynamic> statementPostApi(String url, String? vendorId, String token);

  // Post method already accepts token, kept unchanged
  Future<dynamic> postApi(String url, var data, {String? token});

  // Delete method can also be updated to include an optional token if needed
  Future<dynamic> delete(String url, {String? token});

  // If needed in future, you can implement a PUT method similarly
  // Future<dynamic> putApi(String url, var data, {String? token});
}
