// To parse this JSON data, do
//
//     final room = roomFromJson(jsonString);

import 'dart:convert';

class Room {
    Timeline timeline;
    State state;
    AccountData accountData;
    Ephemeral ephemeral;
    UnreadNotifications unreadNotifications;
    Summary summary;

    Room({
        this.timeline,
        this.state,
        this.accountData,
        this.ephemeral,
        this.unreadNotifications,
        this.summary,
    });

    factory Room.fromRawJson(String str) => Room.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Room.fromJson(Map<String, dynamic> json) => new Room(
        timeline: Timeline.fromJson(json["timeline"]),
        state: State.fromJson(json["state"]),
        accountData: AccountData.fromJson(json["account_data"]),
        ephemeral: Ephemeral.fromJson(json["ephemeral"]),
        unreadNotifications: UnreadNotifications.fromJson(json["unread_notifications"]),
        summary: Summary.fromJson(json["summary"]),
    );

    Map<String, dynamic> toJson() => {
        "timeline": timeline.toJson(),
        "state": state.toJson(),
        "account_data": accountData.toJson(),
        "ephemeral": ephemeral.toJson(),
        "unread_notifications": unreadNotifications.toJson(),
        "summary": summary.toJson(),
    };
}

class AccountData {
    List<AccountDataEvent> events;

    AccountData({
        this.events,
    });

    factory AccountData.fromRawJson(String str) => AccountData.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory AccountData.fromJson(Map<String, dynamic> json) => new AccountData(
        events: new List<AccountDataEvent>.from(json["events"].map((x) => AccountDataEvent.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "events": new List<dynamic>.from(events.map((x) => x.toJson())),
    };
}

class AccountDataEvent {
    String type;
    PurpleContent content;

    AccountDataEvent({
        this.type,
        this.content,
    });

    factory AccountDataEvent.fromRawJson(String str) => AccountDataEvent.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory AccountDataEvent.fromJson(Map<String, dynamic> json) => new AccountDataEvent(
        type: json["type"],
        content: PurpleContent.fromJson(json["content"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "content": content.toJson(),
    };
}

class PurpleContent {
    String eventId;

    PurpleContent({
        this.eventId,
    });

    factory PurpleContent.fromRawJson(String str) => PurpleContent.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory PurpleContent.fromJson(Map<String, dynamic> json) => new PurpleContent(
        eventId: json["event_id"],
    );

    Map<String, dynamic> toJson() => {
        "event_id": eventId,
    };
}

class Ephemeral {
    List<EphemeralEvent> events;

    Ephemeral({
        this.events,
    });

    factory Ephemeral.fromRawJson(String str) => Ephemeral.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Ephemeral.fromJson(Map<String, dynamic> json) => new Ephemeral(
        events: new List<EphemeralEvent>.from(json["events"].map((x) => EphemeralEvent.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "events": new List<dynamic>.from(events.map((x) => x.toJson())),
    };
}

class EphemeralEvent {
    String type;
    FluffyContent content;

    EphemeralEvent({
        this.type,
        this.content,
    });

    factory EphemeralEvent.fromRawJson(String str) => EphemeralEvent.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory EphemeralEvent.fromJson(Map<String, dynamic> json) => new EphemeralEvent(
        type: json["type"],
        content: FluffyContent.fromJson(json["content"]),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "content": content.toJson(),
    };
}

class FluffyContent {
    List<dynamic> userIds;
    GgTceKsNw3Fd4JAdbSnIc8C4J2KkAWaSwQuu7Zv7H88 ggTceKsNw3Fd4JAdbSnIc8C4J2KkAWaSwQuu7Zv7H88;
    HFqkCpQpVqZe1J34HPlpHeovsDss7MReDHbhTr11Jo hFqkCpQpVqZe1J34HPlpHeovsDss7MReDHbhTr11Jo;

    FluffyContent({
        this.userIds,
        this.ggTceKsNw3Fd4JAdbSnIc8C4J2KkAWaSwQuu7Zv7H88,
        this.hFqkCpQpVqZe1J34HPlpHeovsDss7MReDHbhTr11Jo,
    });

    factory FluffyContent.fromRawJson(String str) => FluffyContent.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory FluffyContent.fromJson(Map<String, dynamic> json) => new FluffyContent(
        userIds: json["user_ids"] == null ? null : new List<dynamic>.from(json["user_ids"].map((x) => x)),
        ggTceKsNw3Fd4JAdbSnIc8C4J2KkAWaSwQuu7Zv7H88: json["\u0024GgTceKsNw3FD4jAdbSNIc8C4J2KkAWaSWQuu7ZV7H88"] == null ? null : GgTceKsNw3Fd4JAdbSnIc8C4J2KkAWaSwQuu7Zv7H88.fromJson(json["\u0024GgTceKsNw3FD4jAdbSNIc8C4J2KkAWaSWQuu7ZV7H88"]),
        hFqkCpQpVqZe1J34HPlpHeovsDss7MReDHbhTr11Jo: json["\u0024HFqkCpQpVq-Ze1j34hPLPHeovsDss7mReDHbhTR11Jo"] == null ? null : HFqkCpQpVqZe1J34HPlpHeovsDss7MReDHbhTr11Jo.fromJson(json["\u0024HFqkCpQpVq-Ze1j34hPLPHeovsDss7mReDHbhTR11Jo"]),
    );

    Map<String, dynamic> toJson() => {
        "user_ids": userIds == null ? null : new List<dynamic>.from(userIds.map((x) => x)),
        "\u0024GgTceKsNw3FD4jAdbSNIc8C4J2KkAWaSWQuu7ZV7H88": ggTceKsNw3Fd4JAdbSnIc8C4J2KkAWaSwQuu7Zv7H88 == null ? null : ggTceKsNw3Fd4JAdbSnIc8C4J2KkAWaSwQuu7Zv7H88.toJson(),
        "\u0024HFqkCpQpVq-Ze1j34hPLPHeovsDss7mReDHbhTR11Jo": hFqkCpQpVqZe1J34HPlpHeovsDss7MReDHbhTr11Jo == null ? null : hFqkCpQpVqZe1J34HPlpHeovsDss7MReDHbhTr11Jo.toJson(),
    };
}

class GgTceKsNw3Fd4JAdbSnIc8C4J2KkAWaSwQuu7Zv7H88 {
    GgTceKsNw3Fd4JAdbSnIc8C4J2KkAWaSwQuu7Zv7H88MRead mRead;

    GgTceKsNw3Fd4JAdbSnIc8C4J2KkAWaSwQuu7Zv7H88({
        this.mRead,
    });

    factory GgTceKsNw3Fd4JAdbSnIc8C4J2KkAWaSwQuu7Zv7H88.fromRawJson(String str) => GgTceKsNw3Fd4JAdbSnIc8C4J2KkAWaSwQuu7Zv7H88.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory GgTceKsNw3Fd4JAdbSnIc8C4J2KkAWaSwQuu7Zv7H88.fromJson(Map<String, dynamic> json) => new GgTceKsNw3Fd4JAdbSnIc8C4J2KkAWaSwQuu7Zv7H88(
        mRead: GgTceKsNw3Fd4JAdbSnIc8C4J2KkAWaSwQuu7Zv7H88MRead.fromJson(json["m.read"]),
    );

    Map<String, dynamic> toJson() => {
        "m.read": mRead.toJson(),
    };
}

class GgTceKsNw3Fd4JAdbSnIc8C4J2KkAWaSwQuu7Zv7H88MRead {
    LefaMl lefaLefaMl;

    GgTceKsNw3Fd4JAdbSnIc8C4J2KkAWaSwQuu7Zv7H88MRead({
        this.lefaLefaMl,
    });

    factory GgTceKsNw3Fd4JAdbSnIc8C4J2KkAWaSwQuu7Zv7H88MRead.fromRawJson(String str) => GgTceKsNw3Fd4JAdbSnIc8C4J2KkAWaSwQuu7Zv7H88MRead.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory GgTceKsNw3Fd4JAdbSnIc8C4J2KkAWaSwQuu7Zv7H88MRead.fromJson(Map<String, dynamic> json) => new GgTceKsNw3Fd4JAdbSnIc8C4J2KkAWaSwQuu7Zv7H88MRead(
        lefaLefaMl: LefaMl.fromJson(json["@lefa:lefa.ml"]),
    );

    Map<String, dynamic> toJson() => {
        "@lefa:lefa.ml": lefaLefaMl.toJson(),
    };
}

class LefaMl {
    int ts;

    LefaMl({
        this.ts,
    });

    factory LefaMl.fromRawJson(String str) => LefaMl.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory LefaMl.fromJson(Map<String, dynamic> json) => new LefaMl(
        ts: json["ts"],
    );

    Map<String, dynamic> toJson() => {
        "ts": ts,
    };
}

class HFqkCpQpVqZe1J34HPlpHeovsDss7MReDHbhTr11Jo {
    HFqkCpQpVqZe1J34HPlpHeovsDss7MReDHbhTr11JoMRead mRead;

    HFqkCpQpVqZe1J34HPlpHeovsDss7MReDHbhTr11Jo({
        this.mRead,
    });

    factory HFqkCpQpVqZe1J34HPlpHeovsDss7MReDHbhTr11Jo.fromRawJson(String str) => HFqkCpQpVqZe1J34HPlpHeovsDss7MReDHbhTr11Jo.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory HFqkCpQpVqZe1J34HPlpHeovsDss7MReDHbhTr11Jo.fromJson(Map<String, dynamic> json) => new HFqkCpQpVqZe1J34HPlpHeovsDss7MReDHbhTr11Jo(
        mRead: HFqkCpQpVqZe1J34HPlpHeovsDss7MReDHbhTr11JoMRead.fromJson(json["m.read"]),
    );

    Map<String, dynamic> toJson() => {
        "m.read": mRead.toJson(),
    };
}

class HFqkCpQpVqZe1J34HPlpHeovsDss7MReDHbhTr11JoMRead {
    LefaMl penguinphilLefaMl;

    HFqkCpQpVqZe1J34HPlpHeovsDss7MReDHbhTr11JoMRead({
        this.penguinphilLefaMl,
    });

    factory HFqkCpQpVqZe1J34HPlpHeovsDss7MReDHbhTr11JoMRead.fromRawJson(String str) => HFqkCpQpVqZe1J34HPlpHeovsDss7MReDHbhTr11JoMRead.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory HFqkCpQpVqZe1J34HPlpHeovsDss7MReDHbhTr11JoMRead.fromJson(Map<String, dynamic> json) => new HFqkCpQpVqZe1J34HPlpHeovsDss7MReDHbhTr11JoMRead(
        penguinphilLefaMl: LefaMl.fromJson(json["@penguinphil:lefa.ml"]),
    );

    Map<String, dynamic> toJson() => {
        "@penguinphil:lefa.ml": penguinphilLefaMl.toJson(),
    };
}

class State {
    List<StateEvent> events;

    State({
        this.events,
    });

    factory State.fromRawJson(String str) => State.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory State.fromJson(Map<String, dynamic> json) => new State(
        events: new List<StateEvent>.from(json["events"].map((x) => StateEvent.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "events": new List<dynamic>.from(events.map((x) => x.toJson())),
    };
}

class StateEvent {
    String type;
    Sender sender;
    TentacledContent content;
    String stateKey;
    int originServerTs;
    PurpleUnsigned unsigned;
    String eventId;

    StateEvent({
        this.type,
        this.sender,
        this.content,
        this.stateKey,
        this.originServerTs,
        this.unsigned,
        this.eventId,
    });

    factory StateEvent.fromRawJson(String str) => StateEvent.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory StateEvent.fromJson(Map<String, dynamic> json) => new StateEvent(
        type: json["type"],
        sender: senderValues.map[json["sender"]],
        content: TentacledContent.fromJson(json["content"]),
        stateKey: json["state_key"],
        originServerTs: json["origin_server_ts"],
        unsigned: PurpleUnsigned.fromJson(json["unsigned"]),
        eventId: json["event_id"],
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "sender": senderValues.reverse[sender],
        "content": content.toJson(),
        "state_key": stateKey,
        "origin_server_ts": originServerTs,
        "unsigned": unsigned.toJson(),
        "event_id": eventId,
    };
}

class TentacledContent {
    String roomVersion;
    Sender creator;
    String historyVisibility;
    String guestAccess;
    String membership;
    String displayname;
    dynamic avatarUrl;
    String joinRule;
    Map<String, int> users;
    int usersDefault;
    Events events;
    int eventsDefault;
    int stateDefault;
    int ban;
    int kick;
    int redact;
    int invite;

    TentacledContent({
        this.roomVersion,
        this.creator,
        this.historyVisibility,
        this.guestAccess,
        this.membership,
        this.displayname,
        this.avatarUrl,
        this.joinRule,
        this.users,
        this.usersDefault,
        this.events,
        this.eventsDefault,
        this.stateDefault,
        this.ban,
        this.kick,
        this.redact,
        this.invite,
    });

    factory TentacledContent.fromRawJson(String str) => TentacledContent.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory TentacledContent.fromJson(Map<String, dynamic> json) => new TentacledContent(
        roomVersion: json["room_version"] == null ? null : json["room_version"],
        creator: json["creator"] == null ? null : senderValues.map[json["creator"]],
        historyVisibility: json["history_visibility"] == null ? null : json["history_visibility"],
        guestAccess: json["guest_access"] == null ? null : json["guest_access"],
        membership: json["membership"] == null ? null : json["membership"],
        displayname: json["displayname"] == null ? null : json["displayname"],
        avatarUrl: json["avatar_url"],
        joinRule: json["join_rule"] == null ? null : json["join_rule"],
        users: json["users"] == null ? null : new Map.from(json["users"]).map((k, v) => new MapEntry<String, int>(k, v)),
        usersDefault: json["users_default"] == null ? null : json["users_default"],
        events: json["events"] == null ? null : Events.fromJson(json["events"]),
        eventsDefault: json["events_default"] == null ? null : json["events_default"],
        stateDefault: json["state_default"] == null ? null : json["state_default"],
        ban: json["ban"] == null ? null : json["ban"],
        kick: json["kick"] == null ? null : json["kick"],
        redact: json["redact"] == null ? null : json["redact"],
        invite: json["invite"] == null ? null : json["invite"],
    );

    Map<String, dynamic> toJson() => {
        "room_version": roomVersion == null ? null : roomVersion,
        "creator": creator == null ? null : senderValues.reverse[creator],
        "history_visibility": historyVisibility == null ? null : historyVisibility,
        "guest_access": guestAccess == null ? null : guestAccess,
        "membership": membership == null ? null : membership,
        "displayname": displayname == null ? null : displayname,
        "avatar_url": avatarUrl,
        "join_rule": joinRule == null ? null : joinRule,
        "users": users == null ? null : new Map.from(users).map((k, v) => new MapEntry<String, dynamic>(k, v)),
        "users_default": usersDefault == null ? null : usersDefault,
        "events": events == null ? null : events.toJson(),
        "events_default": eventsDefault == null ? null : eventsDefault,
        "state_default": stateDefault == null ? null : stateDefault,
        "ban": ban == null ? null : ban,
        "kick": kick == null ? null : kick,
        "redact": redact == null ? null : redact,
        "invite": invite == null ? null : invite,
    };
}

enum Sender { LEFA_LEFA_ML, PENGUINPHIL_LEFA_ML }

final senderValues = new EnumValues({
    "@lefa:lefa.ml": Sender.LEFA_LEFA_ML,
    "@penguinphil:lefa.ml": Sender.PENGUINPHIL_LEFA_ML
});

class Events {
    int mRoomName;
    int mRoomPowerLevels;
    int mRoomHistoryVisibility;
    int mRoomCanonicalAlias;
    int mRoomAvatar;

    Events({
        this.mRoomName,
        this.mRoomPowerLevels,
        this.mRoomHistoryVisibility,
        this.mRoomCanonicalAlias,
        this.mRoomAvatar,
    });

    factory Events.fromRawJson(String str) => Events.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Events.fromJson(Map<String, dynamic> json) => new Events(
        mRoomName: json["m.room.name"],
        mRoomPowerLevels: json["m.room.power_levels"],
        mRoomHistoryVisibility: json["m.room.history_visibility"],
        mRoomCanonicalAlias: json["m.room.canonical_alias"],
        mRoomAvatar: json["m.room.avatar"],
    );

    Map<String, dynamic> toJson() => {
        "m.room.name": mRoomName,
        "m.room.power_levels": mRoomPowerLevels,
        "m.room.history_visibility": mRoomHistoryVisibility,
        "m.room.canonical_alias": mRoomCanonicalAlias,
        "m.room.avatar": mRoomAvatar,
    };
}

class PurpleUnsigned {
    int age;
    String replacesState;
    PrevContent prevContent;
    Sender prevSender;

    PurpleUnsigned({
        this.age,
        this.replacesState,
        this.prevContent,
        this.prevSender,
    });

    factory PurpleUnsigned.fromRawJson(String str) => PurpleUnsigned.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory PurpleUnsigned.fromJson(Map<String, dynamic> json) => new PurpleUnsigned(
        age: json["age"],
        replacesState: json["replaces_state"] == null ? null : json["replaces_state"],
        prevContent: json["prev_content"] == null ? null : PrevContent.fromJson(json["prev_content"]),
        prevSender: json["prev_sender"] == null ? null : senderValues.map[json["prev_sender"]],
    );

    Map<String, dynamic> toJson() => {
        "age": age,
        "replaces_state": replacesState == null ? null : replacesState,
        "prev_content": prevContent == null ? null : prevContent.toJson(),
        "prev_sender": prevSender == null ? null : senderValues.reverse[prevSender],
    };
}

class PrevContent {
    bool isDirect;
    String membership;
    String displayname;
    dynamic avatarUrl;

    PrevContent({
        this.isDirect,
        this.membership,
        this.displayname,
        this.avatarUrl,
    });

    factory PrevContent.fromRawJson(String str) => PrevContent.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory PrevContent.fromJson(Map<String, dynamic> json) => new PrevContent(
        isDirect: json["is_direct"],
        membership: json["membership"],
        displayname: json["displayname"],
        avatarUrl: json["avatar_url"],
    );

    Map<String, dynamic> toJson() => {
        "is_direct": isDirect,
        "membership": membership,
        "displayname": displayname,
        "avatar_url": avatarUrl,
    };
}

class Summary {
    Summary();

    factory Summary.fromRawJson(String str) => Summary.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Summary.fromJson(Map<String, dynamic> json) => new Summary(
    );

    Map<String, dynamic> toJson() => {
    };
}

class Timeline {
    List<TimelineEvent> events;
    String prevBatch;
    bool limited;

    Timeline({
        this.events,
        this.prevBatch,
        this.limited,
    });

    factory Timeline.fromRawJson(String str) => Timeline.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Timeline.fromJson(Map<String, dynamic> json) => new Timeline(
        events: new List<TimelineEvent>.from(json["events"].map((x) => TimelineEvent.fromJson(x))),
        prevBatch: json["prev_batch"],
        limited: json["limited"],
    );

    Map<String, dynamic> toJson() => {
        "events": new List<dynamic>.from(events.map((x) => x.toJson())),
        "prev_batch": prevBatch,
        "limited": limited,
    };
}

class TimelineEvent {
    String type;
    Sender sender;
    StickyContent content;
    int originServerTs;
    FluffyUnsigned unsigned;
    String eventId;
    String redacts;

    TimelineEvent({
        this.type,
        this.sender,
        this.content,
        this.originServerTs,
        this.unsigned,
        this.eventId,
        this.redacts,
    });

    factory TimelineEvent.fromRawJson(String str) => TimelineEvent.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory TimelineEvent.fromJson(Map<String, dynamic> json) => new TimelineEvent(
        type: json["type"],
        sender: senderValues.map[json["sender"]],
        content: StickyContent.fromJson(json["content"]),
        originServerTs: json["origin_server_ts"],
        unsigned: FluffyUnsigned.fromJson(json["unsigned"]),
        eventId: json["event_id"],
        redacts: json["redacts"] == null ? null : json["redacts"],
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "sender": senderValues.reverse[sender],
        "content": content.toJson(),
        "origin_server_ts": originServerTs,
        "unsigned": unsigned.toJson(),
        "event_id": eventId,
        "redacts": redacts == null ? null : redacts,
    };
}

class StickyContent {
    int version;
    String callId;
    List<Candidate> candidates;
    Answer answer;
    String msgtype;
    String body;

    StickyContent({
        this.version,
        this.callId,
        this.candidates,
        this.answer,
        this.msgtype,
        this.body,
    });

    factory StickyContent.fromRawJson(String str) => StickyContent.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory StickyContent.fromJson(Map<String, dynamic> json) => new StickyContent(
        version: json["version"] == null ? null : json["version"],
        callId: json["call_id"] == null ? null : json["call_id"],
        candidates: json["candidates"] == null ? null : new List<Candidate>.from(json["candidates"].map((x) => Candidate.fromJson(x))),
        answer: json["answer"] == null ? null : Answer.fromJson(json["answer"]),
        msgtype: json["msgtype"] == null ? null : json["msgtype"],
        body: json["body"] == null ? null : json["body"],
    );

    Map<String, dynamic> toJson() => {
        "version": version == null ? null : version,
        "call_id": callId == null ? null : callId,
        "candidates": candidates == null ? null : new List<dynamic>.from(candidates.map((x) => x.toJson())),
        "answer": answer == null ? null : answer.toJson(),
        "msgtype": msgtype == null ? null : msgtype,
        "body": body == null ? null : body,
    };
}

class Answer {
    String sdp;
    String type;

    Answer({
        this.sdp,
        this.type,
    });

    factory Answer.fromRawJson(String str) => Answer.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Answer.fromJson(Map<String, dynamic> json) => new Answer(
        sdp: json["sdp"],
        type: json["type"],
    );

    Map<String, dynamic> toJson() => {
        "sdp": sdp,
        "type": type,
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

    factory Candidate.fromRawJson(String str) => Candidate.fromJson(json.decode(str));

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

class FluffyUnsigned {
    int age;
    String transactionId;

    FluffyUnsigned({
        this.age,
        this.transactionId,
    });

    factory FluffyUnsigned.fromRawJson(String str) => FluffyUnsigned.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory FluffyUnsigned.fromJson(Map<String, dynamic> json) => new FluffyUnsigned(
        age: json["age"],
        transactionId: json["transaction_id"] == null ? null : json["transaction_id"],
    );

    Map<String, dynamic> toJson() => {
        "age": age,
        "transaction_id": transactionId == null ? null : transactionId,
    };
}

class UnreadNotifications {
    int notificationCount;
    int highlightCount;

    UnreadNotifications({
        this.notificationCount,
        this.highlightCount,
    });

    factory UnreadNotifications.fromRawJson(String str) => UnreadNotifications.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory UnreadNotifications.fromJson(Map<String, dynamic> json) => new UnreadNotifications(
        notificationCount: json["notification_count"],
        highlightCount: json["highlight_count"],
    );

    Map<String, dynamic> toJson() => {
        "notification_count": notificationCount,
        "highlight_count": highlightCount,
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
