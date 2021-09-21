cmake_minimum_required( VERSION 3.20 )
project( visualizeGeometry )

add_executable( visualizeGeometry visualizeGeometry.cpp )
target_link_libraries( visualizeGeometry ${Pangolin_LIBRARIES} )
set_target_properties(visualizeGeometry
    PROPERTIES
    CXX_STANDARD 17
)
