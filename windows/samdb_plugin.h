#ifndef FLUTTER_PLUGIN_SAMDB_PLUGIN_H_
#define FLUTTER_PLUGIN_SAMDB_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace samdb {

class SamdbPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  SamdbPlugin();

  virtual ~SamdbPlugin();

  // Disallow copy and assign.
  SamdbPlugin(const SamdbPlugin&) = delete;
  SamdbPlugin& operator=(const SamdbPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace samdb

#endif  // FLUTTER_PLUGIN_SAMDB_PLUGIN_H_
