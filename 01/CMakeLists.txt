cmake_minimum_required(VERSION 3.10)

project(main)

aux_source_directory(. SRCS_DIR)

add_executable(${PROJECT_NAME} ${SRCS_DIR})
