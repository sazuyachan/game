#include "example_dll.h"
#include <godot_cpp/core/class_db.hpp>


void ExampleDLL::_bind_methods()
{
    godot::ClassDB::bind_method(  // 调用此函数绑定需要暴露的函数
        godot::D_METHOD("gcd", "a", "b"),  // 传入函数名和变量名给 .a
        &ExampleDLL::gcd  // 传入函数本体
    );
    // 如果还有函数重复调用即可
}


// 在这里照常定义函数
int ExampleDLL::gcd(int a, int b)
{
    while (b != 0)
    {
        int temp = a % b;
        a = b;
        b = temp;
    }
    return a;
}