if(UNIX)
    include(FindPkgConfig)
    PKG_SEARCH_MODULE(SDL2 REQUIRED sdl2)
    PKG_SEARCH_MODULE(SDL2IMAGE REQUIRED SDL2_image >=2.0.0)
    PKG_SEARCH_MODULE(ASSIMP REQUIRED assimp >= 3.0)
    PKG_SEARCH_MODULE(GLEW REQUIRED glew)
else ()
    message("Please Define the followings path")
    message("SDL2_INCLUDE_DIRS, SDL2IMAGE_INCLUDE_DIRS")
    message("SDL2_LIBRARIES, SDL2IMAGE_LIBRARIES")
    message("ASSIMP_INCLUDE_DIRS, ASSIMP_LIBRARIES")
    message("GLEW_INCLUDE_DIRS, GLEW_LIBRARIES")
endif ()
include_directories(${SDL2_INCLUDE_DIRS} ${SDL2IMAGE_INCLUDE_DIRS})
target_link_libraries(${PROJECT_NAME} ${SDL2_LIBRARIES} ${SDL2IMAGE_LIBRARIES})
include_directories(${ASSIMP_INCLUDE_DIRS})
target_link_libraries(${PROJECT_NAME} ${ASSIMP_LIBRARIES})
include_directories(${GLEW_INCLUDE_DIRS})
target_link_libraries(${PROJECT_NAME} ${GLEW_LIBRARIES})
