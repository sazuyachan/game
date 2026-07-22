#include "register_types.h"
#include <godot_cpp/godot.hpp>
using namespace godot;

// 在这里引入所有需要暴露的类的头文件
#include "example_lib.h"


void initialize_module(ModuleInitializationLevel p_level)
{
    if (p_level != MODULE_INITIALIZATION_LEVEL_SCENE)
        return;

    // 在这里注册需要暴露的类
    ClassDB::register_class<ExampleLib>();
}

void uninitialize_module(ModuleInitializationLevel p_level) {}

extern "C"
{
    GDExtensionBool GDE_EXPORT library_init(
            GDExtensionInterfaceGetProcAddress p_get_proc_address,
            const GDExtensionClassLibraryPtr p_library,
            GDExtensionInitialization *r_initialization)
    {
        GDExtensionBinding::InitObject init_obj(
            p_get_proc_address,
            p_library,
            r_initialization
        );

        init_obj.register_initializer(initialize_module);
        init_obj.register_terminator(uninitialize_module);
        init_obj.set_minimum_library_initialization_level(MODULE_INITIALIZATION_LEVEL_SCENE);

        return init_obj.init();
    }

}