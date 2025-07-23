cmake_minimum_required(VERSION 3.22)
project(task_manager)

set(CMAKE_CXX_STANDARD 17)

find_package(PostgreSQL REQUIRED)

include_directories(${PostgreSQL_INCLUDE_DIRS})

# Пути к заголовкам
include_directories(include)

set(SOURCES
        src/main.cpp
        src/server.cpp
        src/routes/task_api.cpp
        src/db/db.cpp
        src/db/task.cpp
)

add_executable(task_manager ${SOURCES})

target_link_libraries(task_manager ${PostgreSQL_LIBRARIES})
