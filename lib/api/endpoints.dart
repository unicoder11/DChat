class Endpoints {
  Endpoints._();

  // receiveTimeout
  static const int receiveTimeout = 5000;

  // connectTimeout
  static const int connectionTimeout = 3000;

  // homeserver
  static const String homeserver = "lefa.ml";

  // client api version
  static const String apiVersion = "r0";

  // base url => https://lefa.ml/_matrix/client/r0
  static const String baseUrl =
      "https://matrix." + homeserver + "/_matrix/client/" + apiVersion;

  // login
  static const String postLogin = baseUrl + "/login";
}
