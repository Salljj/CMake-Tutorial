if (NOT HelloLib_ROOT) 
    set(HelloLib_ROOT "$ENV{HelloLib_ROOT}")
endif()

if (HelloLib_ROOT STREQUAL "")
    message(fatal "not define HelloLib_ROOT environment")
else()
    set(_HelloLib_ROOT "${HelloLib_ROOT}")
endif()

find_path(HelloLib_INCLUDE_DIR 
    NAMES hello.h 
    HINTS 
    ${_HelloLib_ROOT}/include
)

find_library(HelloLib_LIBRARIES 
    NAMES Hello 
    HINTS
    ${_HelloLib_ROOT}/lib
)

include(FindPackageHandleStandardArgs)

find_package_handle_standard_args(Hello
    FOUND_VAR
    Hello_FOUND
    REQUIRED_VARS
    HelloLib_INCLUDE_DIR
    HelloLib_LIBRARIES
)
