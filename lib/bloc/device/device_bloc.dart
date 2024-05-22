import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exam_project/bloc/device/device_state.dart';
import 'package:flutter_exam_project/models/BasicRoomStatus.dart';

import '../../models/events.dart';
import '../../utils/broadcast_ws_channel.dart';
import '../../utils/data_source.dart';

class DeviceBloc extends Bloc<BaseEvent, DeviceState> {
  DeviceBloc(this.wsChannel) : super(DeviceInitial()) {
    on<ServerReturnsBasicRoomStatus>(_onServerReturnsBasicRoomStatus);
    on<ServerReturnsNewMotorStatusForAllMotorsInRoom>(_onServerReturnsNewMotorStatusForAllMotorsInRoom);
    on<ServerReturnsDetailedRoomToUser>(_onServerReturnsDetailedRoomToUser);
    on<ClientEvent>(_onClientEvent); 

    _channelSubscription =
        wsChannel.stream.map((event) => jsonDecode(event)).map((event) {
      try {
        final serverEvent = ServerEvent.fromJson(event);
        return serverEvent;
      } catch (e) {
        print(e);
        throw e;
      }
    }).listen(add, onError: addError);
  }

  final BroadcastWsChannel wsChannel;
  late StreamSubscription _channelSubscription;
  String? _jwt;

  @override
  Future<void> close() async {
    // Remember to cancel the subscription when no longer needed.
    _channelSubscription.cancel();
    // And close the socket
    super.close();
  }

  FutureOr<void> _onClientEvent(
      ClientEvent event, Emitter<DeviceState> emitter) {
    wsChannel.sink.add(jsonEncode(event.toJson()));
  }

  Future<void> getDeviceData() async {
    add(ClientWantsBasicRoomStatusDto(
        eventType: ClientWantsBasicRoomStatusDto.name));
  }

  Future<void> RemoweDeviceList() async {
    emit(DeviceSigOut());
  }
  Future<void> getDetailedRoom(int roomId) async {
    add(ClientWantsDetailedRoomDto(eventType: ClientWantsDetailedRoomDto.name, roomId: roomId));
  }

  Future<void> OpenCloseDevice(int roomId, bool openClose) async{
    add(ClientWantsToOpenOrCloseAllWindowsInRoomDto(eventType: ClientWantsToOpenOrCloseAllWindowsInRoomDto.name, id: roomId, open: openClose));
  }

  FutureOr<void> _onServerReturnsBasicRoomStatus(
      ServerReturnsBasicRoomStatus event, Emitter<DeviceState> emit) {
    List<BasicRoomStatus> data = event.basicRoomListData;

    emit(DevicDataLoaded(simpleDataLoadList: data));
  }

  FutureOr<void> _onServerReturnsNewMotorStatusForAllMotorsInRoom(ServerReturnsNewMotorStatusForAllMotorsInRoom event, Emitter<DeviceState> emit) {
    late bool isOpen;
    if(event.message == "All windows are enabled") {
      isOpen = true;
    } else{
      isOpen = false;
    }
    emit(DeviceWindowStatus(open: isOpen, motors: event.motors));
  }

  FutureOr<void> _onServerReturnsDetailedRoomToUser(ServerReturnsDetailedRoomToUser event, Emitter<DeviceState> emit) {
    bool open = true;

    event.room.motors?.forEach((element) {if(element.isOpen == false){ open = false;}} );

    emit(DetailedRoom(roomId: event.room.roomId, name: event.room.name, sensors: event.room.sensors, motors: event.room.motors, open: open));
  }
}
