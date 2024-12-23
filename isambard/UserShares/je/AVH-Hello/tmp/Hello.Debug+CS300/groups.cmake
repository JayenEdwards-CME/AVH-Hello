# groups.cmake

# group Main
add_library(Group_Main OBJECT
  "${SOLUTION_ROOT}/main.c"
)
target_include_directories(Group_Main PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
)
target_compile_definitions(Group_Main PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(Group_Main PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(Group_Main PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# group App
add_library(Group_App OBJECT
  "${SOLUTION_ROOT}/hello.c"
)
target_include_directories(Group_App PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
)
target_compile_definitions(Group_App PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(Group_App PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(Group_App PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# group Board IO
add_library(Group_Board_IO OBJECT
  "${SOLUTION_ROOT}/Board_IO/retarget_stdio.c"
)
target_include_directories(Group_Board_IO PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
)
target_compile_definitions(Group_Board_IO PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(Group_Board_IO PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(Group_Board_IO PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)
