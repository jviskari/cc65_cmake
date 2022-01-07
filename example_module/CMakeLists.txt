set(module example_module)

add_library(${module} STATIC
    ${CMAKE_CURRENT_SOURCE_DIR}/src/text.s
    ${CMAKE_CURRENT_SOURCE_DIR}/src/module.c
)

target_include_directories(${module}
    #By using 'PUBLIC' the include path is visible for everything that adds
    #dependency by using target_link_libraries()
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/inc
    )


