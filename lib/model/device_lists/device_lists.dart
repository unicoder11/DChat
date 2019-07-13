import 'dart:convert';

class DeviceLists {
  List<dynamic> changed;
  List<dynamic> left;

  DeviceLists({
    this.changed,
    this.left,
  });

  factory DeviceLists.fromRawJson(String str) =>
      DeviceLists.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DeviceLists.fromJson(Map<String, dynamic> json) => new DeviceLists(
        changed: new List<dynamic>.from(json["changed"].map((x) => x)),
        left: new List<dynamic>.from(json["left"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "changed": new List<dynamic>.from(changed.map((x) => x)),
        "left": new List<dynamic>.from(left.map((x) => x)),
      };
}
