import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'samdb_platform_interface.dart';

/// An implementation of [SamdbPlatform] that uses method channels.
class MethodChannelSamdb extends SamdbPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('samdb');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
