import 'dart:convert';

class AccountData {
  List<Event> events;

  AccountData({
    this.events,
  });

  factory AccountData.fromRawJson(String str) =>
      AccountData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AccountData.fromJson(Map<String, dynamic> json) => new AccountData(
        events:
            new List<Event>.from(json["events"].map((x) => Event.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "events": new List<dynamic>.from(events.map((x) => x.toJson())),
      };
}

class Event {
  String type;
  EventContent content;

  Event({
    this.type,
    this.content,
  });

  factory Event.fromRawJson(String str) => Event.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Event.fromJson(Map<String, dynamic> json) => new Event(
        type: json["type"],
        content: EventContent.fromJson(json["content"]),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "content": content.toJson(),
      };
}

class EventContent {
  bool messageComposerInputIsRichTextEnabled;
  List<String> penguinphilLefaMl;
  Global global;
  Device device;

  EventContent({
    this.messageComposerInputIsRichTextEnabled,
    this.penguinphilLefaMl,
    this.global,
    this.device,
  });

  factory EventContent.fromRawJson(String str) =>
      EventContent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EventContent.fromJson(Map<String, dynamic> json) => new EventContent(
        messageComposerInputIsRichTextEnabled:
            json["MessageComposerInput.isRichTextEnabled"] == null
                ? null
                : json["MessageComposerInput.isRichTextEnabled"],
        penguinphilLefaMl: json["@penguinphil:lefa.ml"] == null
            ? null
            : new List<String>.from(json["@penguinphil:lefa.ml"].map((x) => x)),
        global: json["global"] == null ? null : Global.fromJson(json["global"]),
        device: json["device"] == null ? null : Device.fromJson(json["device"]),
      );

  Map<String, dynamic> toJson() => {
        "MessageComposerInput.isRichTextEnabled":
            messageComposerInputIsRichTextEnabled == null
                ? null
                : messageComposerInputIsRichTextEnabled,
        "@penguinphil:lefa.ml": penguinphilLefaMl == null
            ? null
            : new List<dynamic>.from(penguinphilLefaMl.map((x) => x)),
        "global": global == null ? null : global.toJson(),
        "device": device == null ? null : device.toJson(),
      };
}

class Device {
  Device();

  factory Device.fromRawJson(String str) => Device.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Device.fromJson(Map<String, dynamic> json) => new Device();

  Map<String, dynamic> toJson() => {};
}

class Global {
  List<Erride> underride;
  List<dynamic> sender;
  List<dynamic> room;
  List<ContentElement> content;
  List<Erride> override;

  Global({
    this.underride,
    this.sender,
    this.room,
    this.content,
    this.override,
  });

  factory Global.fromRawJson(String str) => Global.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Global.fromJson(Map<String, dynamic> json) => new Global(
        underride: new List<Erride>.from(
            json["underride"].map((x) => Erride.fromJson(x))),
        sender: new List<dynamic>.from(json["sender"].map((x) => x)),
        room: new List<dynamic>.from(json["room"].map((x) => x)),
        content: new List<ContentElement>.from(
            json["content"].map((x) => ContentElement.fromJson(x))),
        override: new List<Erride>.from(
            json["override"].map((x) => Erride.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "underride": new List<dynamic>.from(underride.map((x) => x.toJson())),
        "sender": new List<dynamic>.from(sender.map((x) => x)),
        "room": new List<dynamic>.from(room.map((x) => x)),
        "content": new List<dynamic>.from(content.map((x) => x.toJson())),
        "override": new List<dynamic>.from(override.map((x) => x.toJson())),
      };
}

class ContentElement {
  List<dynamic> actions;
  String pattern;
  String ruleId;
  bool contentDefault;
  bool enabled;

  ContentElement({
    this.actions,
    this.pattern,
    this.ruleId,
    this.contentDefault,
    this.enabled,
  });

  factory ContentElement.fromRawJson(String str) =>
      ContentElement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ContentElement.fromJson(Map<String, dynamic> json) =>
      new ContentElement(
        actions: new List<dynamic>.from(json["actions"].map((x) => x)),
        pattern: json["pattern"],
        ruleId: json["rule_id"],
        contentDefault: json["default"],
        enabled: json["enabled"],
      );

  Map<String, dynamic> toJson() => {
        "actions": new List<dynamic>.from(actions.map((x) => x)),
        "pattern": pattern,
        "rule_id": ruleId,
        "default": contentDefault,
        "enabled": enabled,
      };
}

class PurpleAction {
  SetTweak setTweak;
  String value;

  PurpleAction({
    this.setTweak,
    this.value,
  });

  factory PurpleAction.fromRawJson(String str) =>
      PurpleAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleAction.fromJson(Map<String, dynamic> json) => new PurpleAction(
        setTweak: setTweakValues.map[json["set_tweak"]],
        value: json["value"] == null ? null : json["value"],
      );

  Map<String, dynamic> toJson() => {
        "set_tweak": setTweakValues.reverse[setTweak],
        "value": value == null ? null : value,
      };
}

enum SetTweak { SOUND, HIGHLIGHT }

final setTweakValues =
    new EnumValues({"highlight": SetTweak.HIGHLIGHT, "sound": SetTweak.SOUND});

enum ActionEnum { DONT_NOTIFY, NOTIFY }

final actionEnumValues = new EnumValues(
    {"dont_notify": ActionEnum.DONT_NOTIFY, "notify": ActionEnum.NOTIFY});

class Erride {
  List<Condition> conditions;
  List<dynamic> actions;
  String ruleId;
  bool errideDefault;
  bool enabled;

  Erride({
    this.conditions,
    this.actions,
    this.ruleId,
    this.errideDefault,
    this.enabled,
  });

  factory Erride.fromRawJson(String str) => Erride.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Erride.fromJson(Map<String, dynamic> json) => new Erride(
        conditions: new List<Condition>.from(
            json["conditions"].map((x) => Condition.fromJson(x))),
        actions: new List<dynamic>.from(json["actions"].map((x) => x)),
        ruleId: json["rule_id"],
        errideDefault: json["default"],
        enabled: json["enabled"],
      );

  Map<String, dynamic> toJson() => {
        "conditions": new List<dynamic>.from(conditions.map((x) => x.toJson())),
        "actions": new List<dynamic>.from(actions.map((x) => x)),
        "rule_id": ruleId,
        "default": errideDefault,
        "enabled": enabled,
      };
}

class FluffyAction {
  SetTweak setTweak;
  dynamic value;

  FluffyAction({
    this.setTweak,
    this.value,
  });

  factory FluffyAction.fromRawJson(String str) =>
      FluffyAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyAction.fromJson(Map<String, dynamic> json) => new FluffyAction(
        setTweak: setTweakValues.map[json["set_tweak"]],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "set_tweak": setTweakValues.reverse[setTweak],
        "value": value,
      };
}

class Condition {
  String kind;
  String key;
  String pattern;
  String conditionIs;

  Condition({
    this.kind,
    this.key,
    this.pattern,
    this.conditionIs,
  });

  factory Condition.fromRawJson(String str) =>
      Condition.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Condition.fromJson(Map<String, dynamic> json) => new Condition(
        kind: json["kind"],
        key: json["key"] == null ? null : json["key"],
        pattern: json["pattern"] == null ? null : json["pattern"],
        conditionIs: json["is"] == null ? null : json["is"],
      );

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "key": key == null ? null : key,
        "pattern": pattern == null ? null : pattern,
        "is": conditionIs == null ? null : conditionIs,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
