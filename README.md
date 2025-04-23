# C++ Cross Platform Template (WIP)
It's not ready for use yet.

[![Language](https://img.shields.io/badge/language-C++-blue.svg)](https://isocpp.org/)
[![CMake](https://img.shields.io/badge/build-CMake-blue)](https://cmake.org/)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)

## 特性

*   **跨平台构建**: 使用 CMake 和 CMake Presets，支持 Linux、 macOS、 Windows、Android、iOS。
*   **依赖管理**: 集成 CPM.cmake，方便管理第三方库。
*   **单元测试**: 使用 GoogleTest 框架，提供测试示例。
*   **代码规范**:
    *   使用 pre-commit 强制执行代码风格检查。
    *   集成 clang-format 进行代码自动格式化。
    *   集成 commitizen 规范 Git commit 消息。
*   **版本管理**: 自动将 Git Tag 作为版本号嵌入代码。
*   **基础项目结构**: 使用常见的C++项目组织方式
*   **CI/CD**: 实现多平台的 GitHub Actions。

## 环境要求
*   Python (用于 pre-commit 和 commitizen)
*   Ninja 构建系统

## 快速开始
```bash
pipx run cookiecutter gh:10-neon/cxx-cross-platform
```
###  构建项目

#### 选择一个 Preset :
你可以通过 cmake --list-presets 查看所有可用的预设配置。常用预设包括：

- linux / linux-clang / linux-gcc
- android / android-arm / android-arm64 / android-x86 / android-x86_64
- ios / macos
- windows / windows-x86_64 / windows-x86 / windows-arm64 / windows-arm

#### 配置项目 (以 macOS 为例)
```bash
cmake --preset macos
```
- 构建目录默认位于 build/<preset-name> 目录下。
#### 编译项目 (以 macOS 为例)
```bash
cmake --build --preset macos
 ```
#### 运行测试 (以 macOS 为例)
```bash
ctest --preset macos --test-dir build/macos/unittest
 ```
#### 安装项目 (以 macOS 为例)
```bash
cmake --install --preset macos
 ```
 - 安装目标默认位于 install/<preset-name> 目录下。


