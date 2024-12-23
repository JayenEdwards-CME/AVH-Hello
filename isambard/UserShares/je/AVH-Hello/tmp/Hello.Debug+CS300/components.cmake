# components.cmake

# component ARM::CMSIS Driver:USART@1.0.0
add_library(ARM_CMSIS_Driver_USART_1_0_0 OBJECT
  "${CMSIS_PACK_ROOT}/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/CMSIS_Driver/Driver_USART.c"
)
target_include_directories(ARM_CMSIS_Driver_USART_1_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  ${CMSIS_PACK_ROOT}/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/CMSIS_Driver
)
target_compile_definitions(ARM_CMSIS_Driver_USART_1_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(ARM_CMSIS_Driver_USART_1_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(ARM_CMSIS_Driver_USART_1_0_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component ARM::CMSIS-Compiler:CORE@1.1.0
add_library(ARM_CMSIS-Compiler_CORE_1_1_0 OBJECT
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-Compiler/2.1.0/source/armcc/retarget_io.c"
)
target_include_directories(ARM_CMSIS-Compiler_CORE_1_1_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
)
target_compile_definitions(ARM_CMSIS-Compiler_CORE_1_1_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(ARM_CMSIS-Compiler_CORE_1_1_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(ARM_CMSIS-Compiler_CORE_1_1_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component ARM::CMSIS-Compiler:STDERR:Custom@1.1.0
add_library(ARM_CMSIS-Compiler_STDERR_Custom_1_1_0 INTERFACE)
target_include_directories(ARM_CMSIS-Compiler_STDERR_Custom_1_1_0 INTERFACE
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
)
target_compile_definitions(ARM_CMSIS-Compiler_STDERR_Custom_1_1_0 INTERFACE
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)

# component ARM::CMSIS-Compiler:STDIN:Custom@1.1.0
add_library(ARM_CMSIS-Compiler_STDIN_Custom_1_1_0 INTERFACE)
target_include_directories(ARM_CMSIS-Compiler_STDIN_Custom_1_1_0 INTERFACE
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
)
target_compile_definitions(ARM_CMSIS-Compiler_STDIN_Custom_1_1_0 INTERFACE
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)

# component ARM::CMSIS-Compiler:STDOUT:Custom@1.1.0
add_library(ARM_CMSIS-Compiler_STDOUT_Custom_1_1_0 INTERFACE)
target_include_directories(ARM_CMSIS-Compiler_STDOUT_Custom_1_1_0 INTERFACE
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
)
target_compile_definitions(ARM_CMSIS-Compiler_STDOUT_Custom_1_1_0 INTERFACE
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)

# component ARM::CMSIS:CORE@6.1.0
add_library(ARM_CMSIS_CORE_6_1_0 INTERFACE)
target_include_directories(ARM_CMSIS_CORE_6_1_0 INTERFACE
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  ${CMSIS_PACK_ROOT}/ARM/CMSIS/6.1.0/CMSIS/Core/Include
)
target_compile_definitions(ARM_CMSIS_CORE_6_1_0 INTERFACE
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)

# component ARM::CMSIS:OS Tick:SysTick@1.0.5
add_library(ARM_CMSIS_OS_Tick_SysTick_1_0_5 OBJECT
  "${CMSIS_PACK_ROOT}/ARM/CMSIS/6.1.0/CMSIS/RTOS2/Source/os_systick.c"
)
target_include_directories(ARM_CMSIS_OS_Tick_SysTick_1_0_5 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
)
target_compile_definitions(ARM_CMSIS_OS_Tick_SysTick_1_0_5 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(ARM_CMSIS_OS_Tick_SysTick_1_0_5 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(ARM_CMSIS_OS_Tick_SysTick_1_0_5 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component ARM::CMSIS:RTOS2:Keil RTX5&Source@5.9.0
add_library(ARM_CMSIS_RTOS2_Keil_RTX5_Source_5_9_0 OBJECT
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Source/GCC/irq_armv8mml.S"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Source/rtx_delay.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Source/rtx_evflags.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Source/rtx_evr.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Source/rtx_kernel.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Source/rtx_lib.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Source/rtx_memory.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Source/rtx_mempool.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Source/rtx_msgqueue.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Source/rtx_mutex.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Source/rtx_semaphore.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Source/rtx_system.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Source/rtx_thread.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Source/rtx_timer.c"
  "${SOLUTION_ROOT}/RTE/CMSIS/RTX_Config.c"
)
target_include_directories(ARM_CMSIS_RTOS2_Keil_RTX5_Source_5_9_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  ${SOLUTION_ROOT}/RTE/CMSIS
  ${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Include
)
target_compile_definitions(ARM_CMSIS_RTOS2_Keil_RTX5_Source_5_9_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(ARM_CMSIS_RTOS2_Keil_RTX5_Source_5_9_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(ARM_CMSIS_RTOS2_Keil_RTX5_Source_5_9_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)
set_source_files_properties("${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Source/GCC/irq_armv8mml.S" PROPERTIES
  COMPILE_DEFINITIONS "_RTE_"
)

# component ARM::Device:Definition@2.0.0
add_library(ARM_Device_Definition_2_0_0 OBJECT
  "${CMSIS_PACK_ROOT}/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/Board/Device_Definition/device_definition.c"
)
target_include_directories(ARM_Device_Definition_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  ${SOLUTION_ROOT}/RTE/Device/SSE-300-MPS3
  ${CMSIS_PACK_ROOT}/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/Board/Device_Definition
  ${CMSIS_PACK_ROOT}/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/Board/Platform
  ${CMSIS_PACK_ROOT}/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/CMSIS_Driver/Config
  ${CMSIS_PACK_ROOT}/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/Device/Include
)
target_compile_definitions(ARM_Device_Definition_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(ARM_Device_Definition_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(ARM_Device_Definition_2_0_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component ARM::Device:Native Driver:IO@1.1.0
add_library(ARM_Device_Native_Driver_IO_1_1_0 OBJECT
  "${CMSIS_PACK_ROOT}/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/Device/Source/arm_mps3_io_drv.c"
)
target_include_directories(ARM_Device_Native_Driver_IO_1_1_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  ${CMSIS_PACK_ROOT}/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/Device/Include
)
target_compile_definitions(ARM_Device_Native_Driver_IO_1_1_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(ARM_Device_Native_Driver_IO_1_1_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(ARM_Device_Native_Driver_IO_1_1_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component ARM::Device:Native Driver:SysCounter@1.1.0
add_library(ARM_Device_Native_Driver_SysCounter_1_1_0 OBJECT
  "${CMSIS_PACK_ROOT}/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/Device/Source/syscounter_armv8-m_cntrl_drv.c"
  "${CMSIS_PACK_ROOT}/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/Device/Source/syscounter_armv8-m_read_drv.c"
)
target_include_directories(ARM_Device_Native_Driver_SysCounter_1_1_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  ${CMSIS_PACK_ROOT}/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/Device/Include
)
target_compile_definitions(ARM_Device_Native_Driver_SysCounter_1_1_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(ARM_Device_Native_Driver_SysCounter_1_1_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(ARM_Device_Native_Driver_SysCounter_1_1_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component ARM::Device:Native Driver:SysTimer@1.1.0
add_library(ARM_Device_Native_Driver_SysTimer_1_1_0 OBJECT
  "${CMSIS_PACK_ROOT}/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/Device/Source/systimer_armv8-m_drv.c"
)
target_include_directories(ARM_Device_Native_Driver_SysTimer_1_1_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  ${CMSIS_PACK_ROOT}/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/Device/Include
)
target_compile_definitions(ARM_Device_Native_Driver_SysTimer_1_1_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(ARM_Device_Native_Driver_SysTimer_1_1_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(ARM_Device_Native_Driver_SysTimer_1_1_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component ARM::Device:Native Driver:Timeout@1.0.0
add_library(ARM_Device_Native_Driver_Timeout_1_0_0 OBJECT
  "${CMSIS_PACK_ROOT}/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/Device/Source/systimer_armv8-m_timeout.c"
)
target_include_directories(ARM_Device_Native_Driver_Timeout_1_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  ${CMSIS_PACK_ROOT}/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/Device/Include
)
target_compile_definitions(ARM_Device_Native_Driver_Timeout_1_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(ARM_Device_Native_Driver_Timeout_1_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(ARM_Device_Native_Driver_Timeout_1_0_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component ARM::Device:Native Driver:UART@1.1.0
add_library(ARM_Device_Native_Driver_UART_1_1_0 OBJECT
  "${CMSIS_PACK_ROOT}/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/Device/Source/uart_cmsdk_drv.c"
)
target_include_directories(ARM_Device_Native_Driver_UART_1_1_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  ${CMSIS_PACK_ROOT}/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/Device/Include
)
target_compile_definitions(ARM_Device_Native_Driver_UART_1_1_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(ARM_Device_Native_Driver_UART_1_1_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(ARM_Device_Native_Driver_UART_1_1_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component ARM::Device:Startup&C Startup@2.0.0
add_library(ARM_Device_Startup_C_Startup_2_0_0 OBJECT
  "${SOLUTION_ROOT}/RTE/Device/SSE-300-MPS3/startup_SSE300MPS3.c"
  "${SOLUTION_ROOT}/RTE/Device/SSE-300-MPS3/system_SSE300MPS3.c"
)
target_include_directories(ARM_Device_Startup_C_Startup_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  ${CMSIS_PACK_ROOT}/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/Board/Platform
  ${CMSIS_PACK_ROOT}/ARM/V2M_MPS3_SSE_300_BSP/1.5.0/Device/Include
)
target_compile_definitions(ARM_Device_Startup_C_Startup_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(ARM_Device_Startup_C_Startup_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(ARM_Device_Startup_C_Startup_2_0_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)
