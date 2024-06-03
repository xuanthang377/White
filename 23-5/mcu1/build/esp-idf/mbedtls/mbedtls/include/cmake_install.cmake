# Install script for directory: E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/ili9340")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "E:/Student/Software/Espressif/tools/xtensa-esp32s3-elf/esp-2022r1-11.2.0/xtensa-esp32s3-elf/bin/xtensa-esp32s3-elf-objdump.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mbedtls" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/aes.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/aria.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/asn1write.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/base64.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/build_info.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/camellia.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/ccm.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/chacha20.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/chachapoly.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/check_config.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/cmac.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/compat-2.x.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/config_psa.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/constant_time.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/ctr_drbg.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/debug.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/des.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/dhm.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/ecdh.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/ecdsa.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/ecjpake.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/entropy.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/error.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/gcm.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/hkdf.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/legacy_or_psa.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/lms.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/mbedtls_config.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/md.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/md5.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/memory_buffer_alloc.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/net_sockets.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/nist_kw.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/oid.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/pem.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/pk.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/pkcs12.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/pkcs5.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/pkcs7.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/platform.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/platform_time.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/platform_util.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/poly1305.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/private_access.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/psa_util.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/ripemd160.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/sha1.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/sha512.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/ssl.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/ssl_cache.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/ssl_ciphersuites.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/ssl_cookie.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/ssl_ticket.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/threading.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/timing.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/version.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/x509.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/x509_crl.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/x509_crt.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/mbedtls/x509_csr.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/psa" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/psa/crypto.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/psa/crypto_builtin_composites.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/psa/crypto_builtin_primitives.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/psa/crypto_compat.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/psa/crypto_config.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/psa/crypto_driver_common.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/psa/crypto_driver_contexts_composites.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/psa/crypto_driver_contexts_primitives.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/psa/crypto_extra.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/psa/crypto_platform.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/psa/crypto_se_driver.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/psa/crypto_sizes.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/psa/crypto_struct.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/psa/crypto_types.h"
    "E:/Student/Software/Espressif/frameworks/esp-idf-v5.0.2/components/mbedtls/mbedtls/include/psa/crypto_values.h"
    )
endif()

