set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

include(${PROJECT_SOURCE_DIR}/cmake/CPM.cmake)
if(NOT CPM_SOURCE_CACHE)
    set(CPM_SOURCE_CACHE ${PROJECT_SOURCE_DIR}/.cpm_cache)
endif()
set(CPM_USE_NAMED_CACHE_DIRECTORIES ON)
info("CPM_SOURCE_CACHE: ${CPM_SOURCE_CACHE}")

add_custom_target(version
        COMMAND ${CMAKE_COMMAND} -D SRC=${PROJECT_SOURCE_DIR}/cmake/version.h.in
                         -D DST=${PROJECT_BINARY_DIR}/include/version.h
                         -P ${PROJECT_SOURCE_DIR}/cmake/version.cmake
        COMMENT "Generate version.h")
include_directories(${PROJECT_BINARY_DIR}/include)