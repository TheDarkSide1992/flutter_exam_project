import 'dart:async';
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exam_project/models/events.dart';
import 'package:flutter_exam_project/utils/broadcast_ws_channel.dart';

import '../../models/profile_model.dart';
import '../../utils/data_source.dart';
import 'profile_state.dart';

class ProfileBloc extends Bloc<BaseEvent, ProfileState> {
  ProfileBloc(this.wsChannel) : super(ProfileInitial()){
    on<ServerLogsInUser>(_onServerLogsInUser);
    on<ServerSendsAccountData>(_onServerSendsAccountData);
    on<ClientEvent>(_onClientEvent);

    _channelSubscription = wsChannel.stream
        .map((event) => jsonDecode(event))
        .map((event) {
          try {
            final serverEvent = ServerEvent.fromJson(event);
            return serverEvent;
          } catch (e) {
            print(e);
            throw e;
          }

        })
        .listen(add, onError: addError);
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

  Future<void> signIn(String email, String password) async {
    add(ClientWantsToLoginDto(eventType: ClientWantsToLoginDto.name, email: email, password: password));
  }

  Future<void> signOut(String email, String password) async {
    add(ClientWantsToLogoutDto(eventType: ClientWantsToLogoutDto.name));
  }

  FutureOr<void> _onClientEvent(ClientEvent event, Emitter<ProfileState> emitter){
    wsChannel.sink.add(jsonEncode(event.toJson()));
  }

  FutureOr<void> _onServerLogsInUser(ServerLogsInUser event, Emitter<ProfileState> emit) {
    add(ClientWantsAccountInfoDto(eventType: ClientWantsAccountInfoDto.name));
  }

  FutureOr<void> _onServerSendsAccountData(ServerSendsAccountData event, Emitter<ProfileState> emit) {
    emit(LoggedProfile(loggedProfile: Profile(realname: event.realname, email: event.email, city: event.city)));
  }
}
