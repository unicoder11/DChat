import 'dart:convert';

import 'package:flutter_im/model/account_data/account_data.dart';
import 'package:flutter_im/model/device_lists/device_lists.dart';
import 'package:flutter_im/model/device_one_time_keys_count/device_one_time_keys_count.dart';
import 'package:flutter_im/model/groups/groups.dart';
import 'package:flutter_im/model/presence/presence.dart';
import 'package:flutter_im/model/rooms/rooms.dart';
import 'package:flutter_im/model/to_device/to_device.dart';

class Sync {
  AccountData accountData;
  ToDevice toDevice;
  DeviceLists deviceLists;
  Presence presence;
  Rooms rooms;
  Groups groups;
  DeviceOneTimeKeysCount deviceOneTimeKeysCount;
  String nextBatch;

  Sync({
    this.accountData,
    this.toDevice,
    this.deviceLists,
    this.presence,
    this.rooms,
    this.groups,
    this.deviceOneTimeKeysCount,
    this.nextBatch,
  });

  factory Sync.fromRawJson(String str) => Sync.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Sync.fromJson(Map<String, dynamic> json) => new Sync(
        accountData: AccountData.fromJson(json["account_data"]),
        toDevice: ToDevice.fromJson(json["to_device"]),
        deviceLists: DeviceLists.fromJson(json["device_lists"]),
        presence: Presence.fromJson(json["presence"]),
        rooms: Rooms.fromJson(json["rooms"]),
        groups: Groups.fromJson(json["groups"]),
        deviceOneTimeKeysCount:
            DeviceOneTimeKeysCount.fromJson(json["device_one_time_keys_count"]),
        nextBatch: json["next_batch"],
      );

  Map<String, dynamic> toJson() => {
        "account_data": accountData.toJson(),
        "to_device": toDevice.toJson(),
        "device_lists": deviceLists.toJson(),
        "presence": presence.toJson(),
        "rooms": rooms.toJson(),
        "groups": groups.toJson(),
        "device_one_time_keys_count": deviceOneTimeKeysCount.toJson(),
        "next_batch": nextBatch,
      };
}
