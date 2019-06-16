include(CMakeForceCompiler)

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_VERSION 1)

# Config only for the given architecture
set(SYSTEM_ARCH "x86_64")
set(SYSTEM_PLATFORM "pc")

# Empty flags variables
set(CMAKE_EXE_LINKER_FLAGS "")
set(CMAKE_C_FLAGS "")
set(CMAKE_CXX_FLAGS "")

# Force compilers
set(CMAKE_ASM_NASM_COMPILER nasm)
set(CMAKE_C_COMPILER amd64-elf-gcc)
set(CMAKE_LINKER amd64-elf-ld)