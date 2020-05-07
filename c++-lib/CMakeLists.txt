cmake_minimum_required(VERSION 3.9)
project(color VERSION 0.5 DESCRIPTION "simple color example")

#configure_file(config.h.in config.h)
add_library(color SHARED Color.cpp)

target_include_directories(color PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
#target_link_libraries(sgtk PUBLIC ${GTK3_LIBRARY_DIRS})

install(TARGETS color DESTINATION lib)
install(FILES Color.hpp DESTINATION include)

# specify the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

