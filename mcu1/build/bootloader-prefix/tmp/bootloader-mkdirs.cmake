# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "E:/Embedded/Espressif/frameworks/esp-idf-v5.1.4/components/bootloader/subproject"
  "E:/mcu1/build/bootloader"
  "E:/mcu1/build/bootloader-prefix"
  "E:/mcu1/build/bootloader-prefix/tmp"
  "E:/mcu1/build/bootloader-prefix/src/bootloader-stamp"
  "E:/mcu1/build/bootloader-prefix/src"
  "E:/mcu1/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "E:/mcu1/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "E:/mcu1/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
