// lib/src/app/config/env.dart

class Env {
  /// ✅ Change this value depending on environment
  static const bool isProduction = false;

  /// ✅ Base API URL
  static String get baseUrl {
    return isProduction
        ? "https://api.production.com"
        : "https://api.staging.com";
  }

  /// ✅ API keys
  static String get googleApiKey {
    return isProduction
        ? "PROD-GOOGLE-API-KEY"
        : "STAGING-GOOGLE-API-KEY";
  }

  /// ✅ Version or Build Info
  static const String appVersion = "1.0.0";
}
