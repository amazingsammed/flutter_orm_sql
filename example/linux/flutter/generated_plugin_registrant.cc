//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <samdb/samdb_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) samdb_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "SamdbPlugin");
  samdb_plugin_register_with_registrar(samdb_registrar);
}
