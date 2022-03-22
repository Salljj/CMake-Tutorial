list(APPEND CMAKE_MODULE_PATH $ENV{HelloLib_ROOT}/shared/cmake-3.10/Modules)

find_package(Hello REQUIRED)

add_executable(${PROJECT_NAME} main.cpp)

message(STATUS "FOUND STATUS: ${Hello_FOUND}")

target_include_directories(${PROJECT_NAME}
    PRIVATE
    ${HelloLib_INCLUDE_DIR}
)

target_link_libraries(${PROJECT_NAME}
    PRIVATE
    ${HelloLib_LIBRARIES}
)
