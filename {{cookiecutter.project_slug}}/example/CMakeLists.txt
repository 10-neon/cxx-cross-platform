set(EXAMPLE_TARGET_NAME "{{cookiecutter.project_slug}}_example")
add_executable(${EXAMPLE_TARGET_NAME} example.cpp)
target_link_libraries(${EXAMPLE_TARGET_NAME} PRIVATE {{cookiecutter.project_slug}})
