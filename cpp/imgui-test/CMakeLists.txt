cmake_minimum_required(VERSION 3.15)
project(imgui-test)

set(IMGUI_DIR ../../imgui)

add_executable(imgui-test
  main.cpp
  ${IMGUI_DIR}/imgui.cpp
  ${IMGUI_DIR}/imgui_draw.cpp
  ${IMGUI_DIR}/imgui_tables.cpp
  ${IMGUI_DIR}/imgui_widgets.cpp
  ${IMGUI_DIR}/backends/imgui_impl_glfw.cpp
  ${IMGUI_DIR}/backends/imgui_impl_opengl3.cpp 
)

target_include_directories(imgui-test PUBLIC
  ${IMGUI_DIR}
  ${IMGUI_DIR}/backends
)

target_link_libraries(imgui-test PUBLIC
  glfw
  GL
  dl
  pthread
)
