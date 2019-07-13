import 'dart:convert';

class Groups {
  Invite join;
  Invite invite;
  Invite leave;

  Groups({
    this.join,
    this.invite,
    this.leave,
  });

  factory Groups.fromRawJson(String str) => Groups.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Groups.fromJson(Map<String, dynamic> json) => new Groups(
        join: Invite.fromJson(json["join"]),
        invite: Invite.fromJson(json["invite"]),
        leave: Invite.fromJson(json["leave"]),
      );

  Map<String, dynamic> toJson() => {
        "join": join.toJson(),
        "invite": invite.toJson(),
        "leave": leave.toJson(),
      };
}

class Invite {
  Invite();

  factory Invite.fromRawJson(String str) => Invite.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Invite.fromJson(Map<String, dynamic> json) => new Invite();

  Map<String, dynamic> toJson() => {};
}
