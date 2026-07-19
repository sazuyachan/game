#pragma once
#include <godot_cpp/classes/ref_counted.hpp>


class ExampleDLL : public godot::RefCounted  // 需要注册在 Godot 中的类必须继承 RefCounted 类才能被实例化并使用
{
    GDCLASS(ExampleDLL, godot::RefCounted)  // 固定写法，Godot 提供的用来生成必要代码的宏

    protected:
        static void _bind_methods();  // 固定写法，用于绑定需要暴露给 Godot 的函数

    public:
        // 要暴露的函数需要 public 声明
        int gcd(int a, int b);
};