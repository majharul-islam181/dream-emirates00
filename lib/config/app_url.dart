class AppUrl {
  static String server = 'https://staging.karnaphulijewellery.com/api';
  static String baseUserRoute = '$server/app/user';
  static String loginApi = '$baseUserRoute/auth/login';
  static String signupApi = '$baseUserRoute/auth/registration';

  static String getActiveTrades(int page, int pageSize) {
    return '$baseUserRoute/opportunity/virtual-trading/active-trades?page=$page&pageSize=$pageSize';
  }

  static String getCompleteTrades(int page, int pageSize) {
    return '$baseUserRoute/opportunity/virtual-trading/completed-trades?page=$page&pageSize=$pageSize';
  }

  static String getPendingTrades(int page, int pageSize) {
    return '$baseUserRoute/opportunity/virtual-trading/pending-trades?page=$page&pageSize=$pageSize';
  }

  static String getVendorsAccount() {
    return '$baseUserRoute/vendor/associated-vendors';
  }

  static String getUserProfile() {
    return baseUserRoute;
  }

  static String getUserBalance() {
    return '$baseUserRoute/get-user-balance';
  }

  static String getUserStatement() {
    return '$baseUserRoute/opportunity/virtual-trading/generate-statement-data';
  }

  static String connectWebSocket() {
    return 'wss://staging.karnaphulijewellery.com/api/test';
  }

  static String getChartDataEndpoint(String accountId) {
    return 'https://api.example.com/charts/$accountId';
  }
}
