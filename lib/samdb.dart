export 'package:samdb/src/samdb.dart';
import 'samdb_platform_interface.dart';

class Samdb {
  Future<String?> getPlatformVersion() {
    return SamdbPlatform.instance.getPlatformVersion();
  }
}
