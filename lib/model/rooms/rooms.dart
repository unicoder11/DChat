import 'dart:convert';

class Rooms {
  Join join;
  Invite invite;
  Leave leave;

  Rooms({
    this.join,
    this.invite,
    this.leave,
  });

  factory Rooms.fromRawJson(String str) => Rooms.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Rooms.fromJson(Map<String, dynamic> json) => new Rooms(
        join: Join.fromJson(json["join"]),
        invite: Invite.fromJson(json["invite"]),
        leave: Leave.fromJson(json["leave"]),
      );

  Map<String, dynamic> toJson() => {
        "join": join.toJson(),
        "invite": invite.toJson(),
        "leave": leave.toJson(),
      };
}

class Join {
  Join();

  factory Join.fromRawJson(String str) => Join.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Join.fromJson(Map<String, dynamic> json) => new Join();

  Map<String, dynamic> toJson() => {};
}

class Invite {
  Invite();

  factory Invite.fromRawJson(String str) => Invite.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Invite.fromJson(Map<String, dynamic> json) => new Invite();

  Map<String, dynamic> toJson() => {};
}

class Leave {
  Leave();

  factory Leave.fromRawJson(String str) => Leave.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Leave.fromJson(Map<String, dynamic> json) => new Leave();

  Map<String, dynamic> toJson() => {};
}
