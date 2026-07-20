## Project Structure
### addons
Contains all GDExtension modules.
Each subfolder represents an independent module with its own source code,
build configuration, and generated binaries. Modules should be designed to be
as self-contained as possible, making them easier to develop, maintain, and
reuse.
Each module must be compiled locally before it can be used.
```
addons/
    math/
    battle/
    network/
    ...
```
---
### resources
Contains shared project assets.
This directory stores reusable resources such as:
- Textures
- Fonts
- Audio
- Icons
- Other assets that may be referenced by multiple scenes
Resources placed here are intended to be shared across different parts of the
project rather than belonging to a specific scene.
---
### scenes
Contains all Godot scenes.
Each subfolder represents one scene of the game. A scene folder typically
contains:
- The main `.tscn` scene
- Scripts used by that scene
- Child scenes or reusable scene components instantiated by the main scene
Keeping everything related to a scene together makes it easier to navigate,
modify, and expand the project as it grows.
---
### Design Philosophy
The project follows a modular organization.
Instead of grouping files only by type, related files are kept together
whenever possible. This structure makes the project easier to understand,
allows multiple developers to work independently on different modules, and
helps reduce coupling between systems during early development.

## 项目结构
### addons
存放所有 **GDExtension 模块**。
每个子文件夹都代表一个独立模块，包含该模块的源代码、构建配置。
模块应尽可能保持独立、自包含，以便于开发、维护以及后续复用。
使用时需要自行编译。
```
addons/
    math/
    battle/
    network/
    ...
```
---
### resources
存放项目中共享使用的资源。
该目录用于保存各种可被多个场景共同使用的资源，例如：
- 图片（Textures）
- 字体（Fonts）
- 音频（Audio）
- 图标（Icons）
- 其他公共资源
放置在此目录中的资源应尽量保持通用，而不是属于某一个特定场景。
---
### scenes
存放所有 Godot 场景。
每个子文件夹都代表游戏中的一个场景，并集中存放与该场景相关的所有文件。
一个场景目录通常包含：
- 主场景（`.tscn`）
- 场景脚本（`.gd`）
- 由主场景实例化使用的子场景（`.tscn`）
- 仅服务于该场景的其他相关资源
这种组织方式可以使每个场景保持独立，便于浏览、修改以及后续扩展。
---
### 设计理念
本项目采用模块化的组织方式。
相比于仅按照文件类型进行分类（例如将所有脚本放在 `scripts`、所有图片放在 `textures`），我们更倾向于将相关文件集中放置在同一个目录中。
这种结构具有以下优点：
- 项目结构更加清晰，便于理解。
- 不同开发者可以同时负责不同模块，减少相互影响。
- 降低系统之间的耦合度。
- 随着项目规模扩大，更容易维护和扩展。