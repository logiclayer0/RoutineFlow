                                                
                                                










import 'dart:io' as _idi;
import 'package:serverpod/serverpod.dart' as _is;
import 'endpoints.dart' as _iavctuc6;
import 'protocol.dart' as _il2as5qe;
export 'package:serverpod/serverpod.dart' hide Serverpod;










class Serverpod extends _is.Serverpod {
  Serverpod(
    List<String> args, {
    _idi.Directory? serverDirectory,
    _is.ServerpodConfig? config,
    _is.ServerpodConfig Function(_is.ServerpodConfig)? configOverride,
    _is.AuthenticationHandler? authenticationHandler,
    _is.HealthCheckHandler? healthCheckHandler,
    _is.HealthConfig? healthConfig,
    _is.Headers? httpResponseHeaders,
    _is.Headers? httpOptionsResponseHeaders,
    _is.SecurityContextConfig? securityContextConfig,
    _is.ExperimentalFeatures? experimentalFeatures,
    _is.RuntimeParametersListBuilder? runtimeParametersBuilder,
    _is.DatabaseInterceptor? databaseInterceptor,
  }) : super(
         args,
         _il2as5qe.Protocol(),
         _iavctuc6.Endpoints(),
         serverDirectory: serverDirectory,
         config: config,
         configOverride: configOverride,
         authenticationHandler: authenticationHandler,
         healthCheckHandler: healthCheckHandler,
         healthConfig: healthConfig,
         httpResponseHeaders: httpResponseHeaders,
         httpOptionsResponseHeaders: httpOptionsResponseHeaders,
         securityContextConfig: securityContextConfig,
         experimentalFeatures: experimentalFeatures,
         runtimeParametersBuilder: runtimeParametersBuilder,
         databaseInterceptor: databaseInterceptor,
       );
}
