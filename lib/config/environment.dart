class Environment {
  static const String baseUrl = String.fromEnvironment("baseUrl");
  static const String apiKey = String.fromEnvironment("apiKey");
  static const String localUrl = String.fromEnvironment("localUrl");
  static const String mode = String.fromEnvironment("mode");
  static bool get isDevelopment => mode == "development mode";
  static bool get isStaging => mode == "staging mode";
  static bool get isProduction => mode == "production mode";
}
