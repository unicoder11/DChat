import 'dart:convert';

class Events {
  String type;
  String sender;
  Content content;
  int originServerTs;
  Unsigned unsigned;
  String eventId;

  Events({
    this.type,
    this.sender,
    this.content,
    this.originServerTs,
    this.unsigned,
    this.eventId,
  });

  factory Events.fromRawJson(String str) => Events.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Events.fromJson(Map<String, dynamic> json) => new Events(
        type: json["type"],
        sender: json["sender"],
        content: Content.fromJson(json["content"]),
        originServerTs: json["origin_server_ts"],
        unsigned: Unsigned.fromJson(json["unsigned"]),
        eventId: json["event_id"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "sender": sender,
        "content": content.toJson(),
        "origin_server_ts": originServerTs,
        "unsigned": unsigned.toJson(),
        "event_id": eventId,
      };
}

class Content {
  int version;
  String callId;
  List<Candidate> candidates;

  Content({
    this.version,
    this.callId,
    this.candidates,
  });

  factory Content.fromRawJson(String str) => Content.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Content.fromJson(Map<String, dynamic> json) => new Content(
        version: json["version"],
        callId: json["call_id"],
        candidates: new List<Candidate>.from(
            json["candidates"].map((x) => Candidate.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "version": version,
        "call_id": callId,
        "candidates": new List<dynamic>.from(candidates.map((x) => x.toJson())),
      };
}

class Candidate {
  String candidate;
  String sdpMid;
  int sdpMLineIndex;

  Candidate({
    this.candidate,
    this.sdpMid,
    this.sdpMLineIndex,
  });

  factory Candidate.fromRawJson(String str) =>
      Candidate.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Candidate.fromJson(Map<String, dynamic> json) => new Candidate(
        candidate: json["candidate"],
        sdpMid: json["sdpMid"],
        sdpMLineIndex: json["sdpMLineIndex"],
      );

  Map<String, dynamic> toJson() => {
        "candidate": candidate,
        "sdpMid": sdpMid,
        "sdpMLineIndex": sdpMLineIndex,
      };
}

class Unsigned {
  int age;
  String transactionId;

  Unsigned({
    this.age,
    this.transactionId,
  });

  factory Unsigned.fromRawJson(String str) =>
      Unsigned.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Unsigned.fromJson(Map<String, dynamic> json) => new Unsigned(
        age: json["age"],
        transactionId: json["transaction_id"],
      );

  Map<String, dynamic> toJson() => {
        "age": age,
        "transaction_id": transactionId,
      };
}
