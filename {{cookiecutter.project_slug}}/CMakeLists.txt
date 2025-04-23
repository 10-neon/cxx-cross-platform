cmake_minimum_required(VERSION 3.25)

set(SRC_ROOT ${CMAKE_CURRENT_SOURCE_DIR})
string(REPLACE "\\" "/" SRC_ROOT ${SRC_ROOT})

include(cmake/lifecycle/pre_project.cmake)
project({{cookiecutter.project_slug}})
include(cmake/lifecycle/post_project.cmake)

list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake")

option(BUILD_DOCS "Enable building of documentation" ON)
option(BUILD_TESTING "Enable building of unittest" ON)

add_subdirectory(src)
add_subdirectory(unittest)
add_subdirectory(example)