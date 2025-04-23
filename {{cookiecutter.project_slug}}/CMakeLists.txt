cmake_minimum_required(VERSION 3.25)

set(SRC_ROOT ${CMAKE_CURRENT_SOURCE_DIR})
string(REPLACE "\\" "/" SRC_ROOT ${SRC_ROOT})

include(cmake/lifecycle/pre_project.cmake)
project({{cookiecutter.project_slug}})
include(cmake/lifecycle/post_project.cmake)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake")
include(ccache)

option(BUILD_DOCS "Enable building of documentation" ON)
option(BUILD_TESTING "Enable building of unittest" ON)

add_subdirectory(src)
add_subdirectory(test)
add_subdirectory(example)