
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

# - Find CRC32C (crc32c.h, libcrc32c.a, libcrc32c.so, and libcrc32c.so.0)
# This module defines
#  CRC32C_INCLUDE_DIR, directory containing headers
#  CRC32C_STATIC_LIB, path to libcrc32c static library
#  CRC32C_FOUND, whether crc32c has been found

find_path(CRC32C_INCLUDES NAMES crc32c/crc32c.h
  PATHS ${_crc32c_roots}
  NO_DEFAULT_PATH
  PATH_SUFFIXES "include" )

find_library(CRC32C_STATIC_LIB NAMES libcrc32c.a
                               PATHS /usr/local/lib /usr/lib
                               DOC "Path to crc32c library." )

message(STATUS)

# if( NOT "${CRC32C_HOME}" STREQUAL "")
#     file( TO_CMAKE_PATH "${CRC32C_HOME}" _native_path )
#     list( APPEND _crc32c_roots ${_native_path} )
# elseif ( Crc32c_HOME )
#     list( APPEND _crc32c_roots ${Crc32c_HOME} )
# endif()

# if (MSVC AND NOT CRC32C_MSVC_STATIC_LIB_SUFFIX)
#   set(CRC32C_MSVC_STATIC_LIB_SUFFIX "_static")
# endif()

# set(CRC32C_STATIC_LIB_SUFFIX
#   "${CRC32C_MSVC_STATIC_LIB_SUFFIX}${CMAKE_STATIC_LIBRARY_SUFFIX}")

# set(CRC32C_STATIC_LIB_NAME
#   ${CMAKE_STATIC_LIBRARY_PREFIX}crc32c${CRC32C_STATIC_LIB_SUFFIX})

# if ( _crc32c_roots )
#   find_library(CRC32C_STATIC_LIB NAMES ${CRC32C_STATIC_LIB_NAME}
#     PATHS ${_crc32c_roots}
#     NO_DEFAULT_PATH
#     PATH_SUFFIXES "lib" )
# else()
#   find_path(CRC32C_INCLUDE_DIR crc32c/crc32c.h
#     # make sure we don't accidentally pick up a different version
#     NO_CMAKE_SYSTEM_PATH
#     NO_SYSTEM_ENVIRONMENT_PATH)
#   find_library(CRC32C_STATIC_LIB ${CRC32C_STATIC_LIB_NAME}
#     NO_CMAKE_SYSTEM_PATH
#     NO_SYSTEM_ENVIRONMENT_PATH)
# endif()

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(CRC32C REQUIRED_VARS
  CRC32C_STATIC_LIB CRC32C_INCLUDES)
