import 'dart:convert';

class Presence {
  List<Event> events;

  Presence({
    this.events,
  });

  factory Presence.fromRawJson(String str) =>
      Presence.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Presence.fromJson(Map<String, dynamic> json) => new Presence(
        events:
            new List<Event>.from(json["events"].map((x) => Event.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "events": new List<dynamic>.from(events.map((x) => x.toJson())),
      };
}

class Event {
  String type;
  String sender;
  Content content;

  Event({
    this.type,
    this.sender,
    this.content,
  });

  factory Event.fromRawJson(String str) => Event.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Event.fromJson(Map<String, dynamic> json) => new Event(
        type: json["type"],
        sender: json["sender"],
        content: Content.fromJson(json["content"]),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "sender": sender,
        "content": content.toJson(),
      };
}

class Content {
  String presence;
  int lastActiveAgo;
  bool currentlyActive;

  Content({
    this.presence,
    this.lastActiveAgo,
    this.currentlyActive,
  });

  factory Content.fromRawJson(String str) => Content.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Content.fromJson(Map<String, dynamic> json) => new Content(
        presence: json["presence"],
        lastActiveAgo: json["last_active_ago"],
        currentlyActive: json["currently_active"],
      );

  Map<String, dynamic> toJson() => {
        "presence": presence,
        "last_active_ago": lastActiveAgo,
        "currently_active": currentlyActive,
      };
}
