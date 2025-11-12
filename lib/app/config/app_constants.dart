// lib/src/app/config/app_constants.dart

class AppConstants {
  // APP INFO
  static const String appName = "My Awesome App";
  static const String appVersion = "1.0.0";

  // API / Backend URL
  static const String baseUrl = "https://api.yourserver.com";

  // Endpoints
  static const String loginEndpoint = "/auth/login";
  static const String userEndpoint = "/user/profile";

  // Storage / Cache Keys
  static const String tokenKey = "auth_token";
  static const String userDataKey = "user_data";

  // UI related constants
  static const double defaultPadding = 16.0;
  static const double cornerRadius = 12.0;

  // Timeouts
  static const int requestTimeout = 30;
}
