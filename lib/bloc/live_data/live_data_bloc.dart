
import 'dart:async';
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exam_project/bloc/live_data/live_data_state.dart';

import '../../models/events.dart';
import '../../utils/broadcast_ws_channel.dart';

class LiveDataBloc extends Bloc<BaseEvent, LiveDataState> {
  LiveDataBloc(this.wsChannel) : super(LiveDataInitial()) {
    on<ServerReturnsNewestSensorData>(_onServerReturnsNewestSensorData);
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

  Future<void> DiscardData() async {
    emit(DataDiscarded());
  }

  FutureOr<void> _onClientEvent(ClientEvent event,
      Emitter<LiveDataState> emitter) {
    wsChannel.sink.add(jsonEncode(event.toJson()));
  }

  FutureOr<void> _onServerReturnsNewestSensorData(ServerReturnsNewestSensorData event, Emitter<LiveDataState> emit) {
    emit(LiveDataLoadedState(data: event.data));
  }
}