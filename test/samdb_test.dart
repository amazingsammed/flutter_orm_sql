import 'package:flutter_test/flutter_test.dart';
import 'package:samdb/samdb.dart';
import 'package:samdb/samdb_platform_interface.dart';
import 'package:samdb/samdb_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSamdbPlatform
    with MockPlatformInterfaceMixin
    implements SamdbPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final SamdbPlatform initialPlatform = SamdbPlatform.instance;

  test('$MethodChannelSamdb is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSamdb>());
  });

  test('getPlatformVersion', () async {
    Samdb samdbPlugin = Samdb();
    MockSamdbPlatform fakePlatform = MockSamdbPlatform();
    SamdbPlatform.instance = fakePlatform;

    expect(await samdbPlugin.getPlatformVersion(), '42');
  });
}
