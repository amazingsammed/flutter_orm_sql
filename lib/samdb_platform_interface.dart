import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'samdb_method_channel.dart';

abstract class SamdbPlatform extends PlatformInterface {
  /// Constructs a SamdbPlatform.
  SamdbPlatform() : super(token: _token);

  static final Object _token = Object();

  static SamdbPlatform _instance = MethodChannelSamdb();

  /// The default instance of [SamdbPlatform] to use.
  ///
  /// Defaults to [MethodChannelSamdb].
  static SamdbPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SamdbPlatform] when
  /// they register themselves.
  static set instance(SamdbPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
