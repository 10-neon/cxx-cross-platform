set(TARGET_NAME {{cookiecutter.project_slug}})

add_library(
    ${TARGET_NAME}
    ${CMAKE_CURRENT_SOURCE_DIR}/{{cookiecutter.project_slug}}.cpp
)
target_link_libraries(
    ${TARGET_NAME}
    PUBLIC
    cmake_git_version_tracking
)

target_include_directories(
    ${TARGET_NAME}
    PUBLIC
    ${SRC_ROOT}/include
    PRIVATE
    ${SRC_ROOT}/src
)

add_dependencies(${TARGET_NAME} version)