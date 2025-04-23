CPMAddPackage("gh:google/googletest#v1.16.0")
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
add_executable(unittest
    cxx_project_name_unittest.cpp
)

target_link_libraries(unittest gtest_main gmock)
enable_testing()
add_test(NAME unittest COMMAND unittest)