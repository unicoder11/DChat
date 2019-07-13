import 'dart:convert';

class DeviceOneTimeKeysCount {
  DeviceOneTimeKeysCount();

  factory DeviceOneTimeKeysCount.fromRawJson(String str) =>
      DeviceOneTimeKeysCount.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DeviceOneTimeKeysCount.fromJson(Map<String, dynamic> json) =>
      new DeviceOneTimeKeysCount();

  Map<String, dynamic> toJson() => {};
}
