                                                
                                                










import 'dart:async' as _ida;
import 'package:http/http.dart' as _i85jenna;
import 'package:routineflow_client/src/protocol/routine.dart' as _ik94qckj;
import 'package:routineflow_client/src/protocol/routine_log.dart' as _ivecpi58;
import 'package:serverpod_auth_core_client/serverpod_auth_core_client.dart'
    as _iacc;
import 'package:serverpod_auth_idp_client/serverpod_auth_idp_client.dart'
    as _iaic;
import 'package:serverpod_client/serverpod_client.dart' as _isc;
import 'protocol.dart' as _il2as5qe;





class EndpointEmailIdp extends _iaic.EndpointEmailIdpBase {
  EndpointEmailIdp(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'emailIdp';

  
  
  
  
  
  
  
  
  
  @override
  _ida.Future<_iacc.AuthSuccess> login({
    required String email,
    required String password,
  }) => caller.callServerEndpoint<_iacc.AuthSuccess>(
    'emailIdp',
    'login',
    {
      'email': email,
      'password': password,
    },
  );

  
  
  
  
  
  
  
  
  
  
  @override
  _ida.Future<_isc.UuidValue> startRegistration({required String email}) =>
      caller.callServerEndpoint<_isc.UuidValue>(
        'emailIdp',
        'startRegistration',
        {'email': email},
      );

  
  
  
  
  
  
  
  
  
  
  @override
  _ida.Future<String> verifyRegistrationCode({
    required _isc.UuidValue accountRequestId,
    required String verificationCode,
  }) => caller.callServerEndpoint<String>(
    'emailIdp',
    'verifyRegistrationCode',
    {
      'accountRequestId': accountRequestId,
      'verificationCode': verificationCode,
    },
  );

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  @override
  _ida.Future<_iacc.AuthSuccess> finishRegistration({
    required String registrationToken,
    required String password,
  }) => caller.callServerEndpoint<_iacc.AuthSuccess>(
    'emailIdp',
    'finishRegistration',
    {
      'registrationToken': registrationToken,
      'password': password,
    },
  );

  
  
  
  
  
  
  
  
  
  
  
  
  
  @override
  _ida.Future<_isc.UuidValue> startPasswordReset({required String email}) =>
      caller.callServerEndpoint<_isc.UuidValue>(
        'emailIdp',
        'startPasswordReset',
        {'email': email},
      );

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  @override
  _ida.Future<String> verifyPasswordResetCode({
    required _isc.UuidValue passwordResetRequestId,
    required String verificationCode,
  }) => caller.callServerEndpoint<String>(
    'emailIdp',
    'verifyPasswordResetCode',
    {
      'passwordResetRequestId': passwordResetRequestId,
      'verificationCode': verificationCode,
    },
  );

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  @override
  _ida.Future<void> finishPasswordReset({
    required String finishPasswordResetToken,
    required String newPassword,
  }) => caller.callServerEndpoint<void>(
    'emailIdp',
    'finishPasswordReset',
    {
      'finishPasswordResetToken': finishPasswordResetToken,
      'newPassword': newPassword,
    },
  );

  @override
  _ida.Future<bool> hasAccount() => caller.callServerEndpoint<bool>(
    'emailIdp',
    'hasAccount',
    {},
  );
}




class EndpointJwtRefresh extends _iacc.EndpointRefreshJwtTokens {
  EndpointJwtRefresh(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'jwtRefresh';

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  @override
  _ida.Future<_iacc.AuthSuccess> refreshAccessToken({String? refreshToken}) =>
      caller.callServerEndpoint<_iacc.AuthSuccess>(
        'jwtRefresh',
        'refreshAccessToken',
        {'refreshToken': refreshToken},
        authenticated: false,
      );
}


class EndpointProgress extends _isc.EndpointRef {
  EndpointProgress(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'progress';

  _ida.Future<int> getStreak(int routineId) => caller.callServerEndpoint<int>(
    'progress',
    'getStreak',
    {'routineId': routineId},
  );

  _ida.Future<int> getWeeklyProgress() => caller.callServerEndpoint<int>(
    'progress',
    'getWeeklyProgress',
    {},
  );

  _ida.Future<Map<String, int>> getStats() =>
      caller.callServerEndpoint<Map<String, int>>(
        'progress',
        'getStats',
        {},
      );
}


class EndpointRoutine extends _isc.EndpointRef {
  EndpointRoutine(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'routine';

  _ida.Future<_ik94qckj.Routine> createRoutine(String name) =>
      caller.callServerEndpoint<_ik94qckj.Routine>(
        'routine',
        'createRoutine',
        {'name': name},
      );

  _ida.Future<List<_ik94qckj.Routine>> listRoutines() =>
      caller.callServerEndpoint<List<_ik94qckj.Routine>>(
        'routine',
        'listRoutines',
        {},
      );

  _ida.Future<bool> toggleRoutineDay(
    int routineId,
    DateTime date,
  ) => caller.callServerEndpoint<bool>(
    'routine',
    'toggleRoutineDay',
    {
      'routineId': routineId,
      'date': date,
    },
  );

  _ida.Future<void> deleteRoutine(int routineId) =>
      caller.callServerEndpoint<void>(
        'routine',
        'deleteRoutine',
        {'routineId': routineId},
      );

  _ida.Future<List<_ivecpi58.RoutineLog>> getRoutineLogs(int routineId) =>
      caller.callServerEndpoint<List<_ivecpi58.RoutineLog>>(
        'routine',
        'getRoutineLogs',
        {'routineId': routineId},
      );
}


class EndpointGreetings extends _isc.EndpointRef {
  EndpointGreetings(_isc.EndpointCaller caller) : super(caller);

  @override
  String get name => 'greetings';

  _ida.Future<String> hello(String name) => caller.callServerEndpoint<String>(
    'greetings',
    'hello',
    {'name': name},
  );
}

class Modules {
  Modules(Client client) {
    serverpod_auth_idp = _iaic.Caller(client);
    serverpod_auth_core = _iacc.Caller(client);
  }

  late final _iaic.Caller serverpod_auth_idp;

  late final _iacc.Caller serverpod_auth_core;
}

class Client extends _isc.ServerpodClientShared {
  Client(
    String host, {
    dynamic securityContext,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _isc.MethodCallContext,
      Object,
      StackTrace,
    )?
    onFailedCall,
    Function(_isc.MethodCallContext)? onSucceededCall,
    bool? disconnectStreamsOnLostInternetConnection,
    _i85jenna.Client? httpClientOverride,
  }) : super(
         host,
         _il2as5qe.Protocol(),
         securityContext: securityContext,
         streamingConnectionTimeout: streamingConnectionTimeout,
         connectionTimeout: connectionTimeout,
         onFailedCall: onFailedCall,
         onSucceededCall: onSucceededCall,
         disconnectStreamsOnLostInternetConnection:
             disconnectStreamsOnLostInternetConnection,
         httpClientOverride: httpClientOverride,
       ) {
    emailIdp = EndpointEmailIdp(this);
    jwtRefresh = EndpointJwtRefresh(this);
    progress = EndpointProgress(this);
    routine = EndpointRoutine(this);
    greetings = EndpointGreetings(this);
    modules = Modules(this);
  }

  late final EndpointEmailIdp emailIdp;

  late final EndpointJwtRefresh jwtRefresh;

  late final EndpointProgress progress;

  late final EndpointRoutine routine;

  late final EndpointGreetings greetings;

  late final Modules modules;

  @override
  Map<String, _isc.EndpointRef> get endpointRefLookup => {
    'emailIdp': emailIdp,
    'jwtRefresh': jwtRefresh,
    'progress': progress,
    'routine': routine,
    'greetings': greetings,
  };

  @override
  Map<String, _isc.ModuleEndpointCaller> get moduleLookup => {
    'serverpod_auth_idp': modules.serverpod_auth_idp,
    'serverpod_auth_core': modules.serverpod_auth_core,
  };
}
