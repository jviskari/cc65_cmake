cmake_minimum_required( VERSION 3.0 )

project( MyProject C ASM )

set( sources
    src/text.s
    src/hello.c
)

add_executable( MyExecutable ${sources} )

set_target_properties( MyExecutable
    PROPERTIES
        OUTPUT_NAME hello.prg
        COMPILE_FLAGS "-t c64"
        LINK_FLAGS "-t c64"
)
