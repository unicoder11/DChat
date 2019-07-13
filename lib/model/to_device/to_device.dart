import 'dart:convert';

class ToDevice {
  List<dynamic> events;

  ToDevice({
    this.events,
  });

  factory ToDevice.fromRawJson(String str) =>
      ToDevice.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ToDevice.fromJson(Map<String, dynamic> json) => new ToDevice(
        events: new List<dynamic>.from(json["events"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "events": new List<dynamic>.from(events.map((x) => x)),
      };
}
