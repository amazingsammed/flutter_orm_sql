#include "include/samdb/samdb_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "samdb_plugin.h"

void SamdbPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  samdb::SamdbPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
