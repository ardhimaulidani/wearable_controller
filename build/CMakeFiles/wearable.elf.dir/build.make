# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/helos/esp/esp-idf/wearable

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/helos/esp/esp-idf/wearable/build

# Include any dependencies generated for this target.
include CMakeFiles/wearable.elf.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/wearable.elf.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/wearable.elf.dir/flags.make

project_elf_src.c:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/helos/esp/esp-idf/wearable/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating project_elf_src.c"
	/usr/bin/cmake -E touch /home/helos/esp/esp-idf/wearable/build/project_elf_src.c

CMakeFiles/wearable.elf.dir/project_elf_src.c.obj: CMakeFiles/wearable.elf.dir/flags.make
CMakeFiles/wearable.elf.dir/project_elf_src.c.obj: project_elf_src.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/helos/esp/esp-idf/wearable/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/wearable.elf.dir/project_elf_src.c.obj"
	/home/helos/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/wearable.elf.dir/project_elf_src.c.obj   -c /home/helos/esp/esp-idf/wearable/build/project_elf_src.c

CMakeFiles/wearable.elf.dir/project_elf_src.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/wearable.elf.dir/project_elf_src.c.i"
	/home/helos/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/helos/esp/esp-idf/wearable/build/project_elf_src.c > CMakeFiles/wearable.elf.dir/project_elf_src.c.i

CMakeFiles/wearable.elf.dir/project_elf_src.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/wearable.elf.dir/project_elf_src.c.s"
	/home/helos/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/helos/esp/esp-idf/wearable/build/project_elf_src.c -o CMakeFiles/wearable.elf.dir/project_elf_src.c.s

# Object files for target wearable.elf
wearable_elf_OBJECTS = \
"CMakeFiles/wearable.elf.dir/project_elf_src.c.obj"

# External object files for target wearable.elf
wearable_elf_EXTERNAL_OBJECTS =

wearable.elf: CMakeFiles/wearable.elf.dir/project_elf_src.c.obj
wearable.elf: CMakeFiles/wearable.elf.dir/build.make
wearable.elf: esp-idf/xtensa/libxtensa.a
wearable.elf: esp-idf/mbedtls/libmbedtls.a
wearable.elf: esp-idf/efuse/libefuse.a
wearable.elf: esp-idf/bootloader_support/libbootloader_support.a
wearable.elf: esp-idf/app_update/libapp_update.a
wearable.elf: esp-idf/esp_ipc/libesp_ipc.a
wearable.elf: esp-idf/spi_flash/libspi_flash.a
wearable.elf: esp-idf/esp_system/libesp_system.a
wearable.elf: esp-idf/soc/libsoc.a
wearable.elf: esp-idf/vfs/libvfs.a
wearable.elf: esp-idf/esp_eth/libesp_eth.a
wearable.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
wearable.elf: esp-idf/esp_netif/libesp_netif.a
wearable.elf: esp-idf/esp_event/libesp_event.a
wearable.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
wearable.elf: esp-idf/nvs_flash/libnvs_flash.a
wearable.elf: esp-idf/esp_wifi/libesp_wifi.a
wearable.elf: esp-idf/lwip/liblwip.a
wearable.elf: esp-idf/log/liblog.a
wearable.elf: esp-idf/heap/libheap.a
wearable.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
wearable.elf: esp-idf/driver/libdriver.a
wearable.elf: esp-idf/pthread/libpthread.a
wearable.elf: esp-idf/espcoredump/libespcoredump.a
wearable.elf: esp-idf/perfmon/libperfmon.a
wearable.elf: esp-idf/esp32/libesp32.a
wearable.elf: esp-idf/esp_common/libesp_common.a
wearable.elf: esp-idf/esp_timer/libesp_timer.a
wearable.elf: esp-idf/freertos/libfreertos.a
wearable.elf: esp-idf/newlib/libnewlib.a
wearable.elf: esp-idf/cxx/libcxx.a
wearable.elf: esp-idf/app_trace/libapp_trace.a
wearable.elf: esp-idf/asio/libasio.a
wearable.elf: esp-idf/cbor/libcbor.a
wearable.elf: esp-idf/coap/libcoap.a
wearable.elf: esp-idf/console/libconsole.a
wearable.elf: esp-idf/nghttp/libnghttp.a
wearable.elf: esp-idf/esp-tls/libesp-tls.a
wearable.elf: esp-idf/esp_adc_cal/libesp_adc_cal.a
wearable.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
wearable.elf: esp-idf/esp_hid/libesp_hid.a
wearable.elf: esp-idf/tcp_transport/libtcp_transport.a
wearable.elf: esp-idf/esp_http_client/libesp_http_client.a
wearable.elf: esp-idf/esp_http_server/libesp_http_server.a
wearable.elf: esp-idf/esp_https_ota/libesp_https_ota.a
wearable.elf: esp-idf/protobuf-c/libprotobuf-c.a
wearable.elf: esp-idf/protocomm/libprotocomm.a
wearable.elf: esp-idf/mdns/libmdns.a
wearable.elf: esp-idf/esp_local_ctrl/libesp_local_ctrl.a
wearable.elf: esp-idf/sdmmc/libsdmmc.a
wearable.elf: esp-idf/esp_serial_slave_link/libesp_serial_slave_link.a
wearable.elf: esp-idf/esp_websocket_client/libesp_websocket_client.a
wearable.elf: esp-idf/expat/libexpat.a
wearable.elf: esp-idf/wear_levelling/libwear_levelling.a
wearable.elf: esp-idf/fatfs/libfatfs.a
wearable.elf: esp-idf/freemodbus/libfreemodbus.a
wearable.elf: esp-idf/jsmn/libjsmn.a
wearable.elf: esp-idf/json/libjson.a
wearable.elf: esp-idf/libsodium/liblibsodium.a
wearable.elf: esp-idf/micro_ros_espidf_component/libmicro_ros_espidf_component.a
wearable.elf: esp-idf/mqtt/libmqtt.a
wearable.elf: esp-idf/openssl/libopenssl.a
wearable.elf: esp-idf/spiffs/libspiffs.a
wearable.elf: esp-idf/ulp/libulp.a
wearable.elf: esp-idf/unity/libunity.a
wearable.elf: esp-idf/wifi_provisioning/libwifi_provisioning.a
wearable.elf: esp-idf/adc_wearable/libadc_wearable.a
wearable.elf: esp-idf/IMU/libIMU.a
wearable.elf: esp-idf/main/libmain.a
wearable.elf: esp-idf/sdmmc/libsdmmc.a
wearable.elf: esp-idf/wear_levelling/libwear_levelling.a
wearable.elf: esp-idf/protocomm/libprotocomm.a
wearable.elf: esp-idf/protobuf-c/libprotobuf-c.a
wearable.elf: esp-idf/mdns/libmdns.a
wearable.elf: esp-idf/console/libconsole.a
wearable.elf: esp-idf/json/libjson.a
wearable.elf: esp-idf/micro_ros_espidf_component/libmicro_ros_espidf_component.a
wearable.elf: ../components/micro_ros_espidf_component/libmicroros.a
wearable.elf: esp-idf/adc_wearable/libadc_wearable.a
wearable.elf: esp-idf/esp_adc_cal/libesp_adc_cal.a
wearable.elf: esp-idf/IMU/libIMU.a
wearable.elf: esp-idf/xtensa/libxtensa.a
wearable.elf: esp-idf/mbedtls/libmbedtls.a
wearable.elf: esp-idf/efuse/libefuse.a
wearable.elf: esp-idf/bootloader_support/libbootloader_support.a
wearable.elf: esp-idf/app_update/libapp_update.a
wearable.elf: esp-idf/esp_ipc/libesp_ipc.a
wearable.elf: esp-idf/spi_flash/libspi_flash.a
wearable.elf: esp-idf/esp_system/libesp_system.a
wearable.elf: esp-idf/soc/libsoc.a
wearable.elf: esp-idf/vfs/libvfs.a
wearable.elf: esp-idf/esp_eth/libesp_eth.a
wearable.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
wearable.elf: esp-idf/esp_netif/libesp_netif.a
wearable.elf: esp-idf/esp_event/libesp_event.a
wearable.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
wearable.elf: esp-idf/nvs_flash/libnvs_flash.a
wearable.elf: esp-idf/esp_wifi/libesp_wifi.a
wearable.elf: esp-idf/lwip/liblwip.a
wearable.elf: esp-idf/log/liblog.a
wearable.elf: esp-idf/heap/libheap.a
wearable.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
wearable.elf: esp-idf/driver/libdriver.a
wearable.elf: esp-idf/pthread/libpthread.a
wearable.elf: esp-idf/espcoredump/libespcoredump.a
wearable.elf: esp-idf/perfmon/libperfmon.a
wearable.elf: esp-idf/esp32/libesp32.a
wearable.elf: esp-idf/esp_common/libesp_common.a
wearable.elf: esp-idf/esp_timer/libesp_timer.a
wearable.elf: esp-idf/freertos/libfreertos.a
wearable.elf: esp-idf/newlib/libnewlib.a
wearable.elf: esp-idf/cxx/libcxx.a
wearable.elf: esp-idf/app_trace/libapp_trace.a
wearable.elf: esp-idf/nghttp/libnghttp.a
wearable.elf: esp-idf/esp-tls/libesp-tls.a
wearable.elf: esp-idf/tcp_transport/libtcp_transport.a
wearable.elf: esp-idf/esp_http_client/libesp_http_client.a
wearable.elf: esp-idf/esp_http_server/libesp_http_server.a
wearable.elf: esp-idf/ulp/libulp.a
wearable.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
wearable.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
wearable.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
wearable.elf: esp-idf/soc/soc/esp32/libsoc_esp32.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/libcoexist.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/libcore.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/libpp.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/librtc.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/libphy.a
wearable.elf: esp-idf/xtensa/libxtensa.a
wearable.elf: esp-idf/mbedtls/libmbedtls.a
wearable.elf: esp-idf/efuse/libefuse.a
wearable.elf: esp-idf/bootloader_support/libbootloader_support.a
wearable.elf: esp-idf/app_update/libapp_update.a
wearable.elf: esp-idf/esp_ipc/libesp_ipc.a
wearable.elf: esp-idf/spi_flash/libspi_flash.a
wearable.elf: esp-idf/esp_system/libesp_system.a
wearable.elf: esp-idf/soc/libsoc.a
wearable.elf: esp-idf/vfs/libvfs.a
wearable.elf: esp-idf/esp_eth/libesp_eth.a
wearable.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
wearable.elf: esp-idf/esp_netif/libesp_netif.a
wearable.elf: esp-idf/esp_event/libesp_event.a
wearable.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
wearable.elf: esp-idf/nvs_flash/libnvs_flash.a
wearable.elf: esp-idf/esp_wifi/libesp_wifi.a
wearable.elf: esp-idf/lwip/liblwip.a
wearable.elf: esp-idf/log/liblog.a
wearable.elf: esp-idf/heap/libheap.a
wearable.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
wearable.elf: esp-idf/driver/libdriver.a
wearable.elf: esp-idf/pthread/libpthread.a
wearable.elf: esp-idf/espcoredump/libespcoredump.a
wearable.elf: esp-idf/perfmon/libperfmon.a
wearable.elf: esp-idf/esp32/libesp32.a
wearable.elf: esp-idf/esp_common/libesp_common.a
wearable.elf: esp-idf/esp_timer/libesp_timer.a
wearable.elf: esp-idf/freertos/libfreertos.a
wearable.elf: esp-idf/newlib/libnewlib.a
wearable.elf: esp-idf/cxx/libcxx.a
wearable.elf: esp-idf/app_trace/libapp_trace.a
wearable.elf: esp-idf/nghttp/libnghttp.a
wearable.elf: esp-idf/esp-tls/libesp-tls.a
wearable.elf: esp-idf/tcp_transport/libtcp_transport.a
wearable.elf: esp-idf/esp_http_client/libesp_http_client.a
wearable.elf: esp-idf/esp_http_server/libesp_http_server.a
wearable.elf: esp-idf/ulp/libulp.a
wearable.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
wearable.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
wearable.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
wearable.elf: esp-idf/soc/soc/esp32/libsoc_esp32.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/libcoexist.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/libcore.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/libpp.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/librtc.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/libphy.a
wearable.elf: esp-idf/xtensa/libxtensa.a
wearable.elf: esp-idf/mbedtls/libmbedtls.a
wearable.elf: esp-idf/efuse/libefuse.a
wearable.elf: esp-idf/bootloader_support/libbootloader_support.a
wearable.elf: esp-idf/app_update/libapp_update.a
wearable.elf: esp-idf/esp_ipc/libesp_ipc.a
wearable.elf: esp-idf/spi_flash/libspi_flash.a
wearable.elf: esp-idf/esp_system/libesp_system.a
wearable.elf: esp-idf/soc/libsoc.a
wearable.elf: esp-idf/vfs/libvfs.a
wearable.elf: esp-idf/esp_eth/libesp_eth.a
wearable.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
wearable.elf: esp-idf/esp_netif/libesp_netif.a
wearable.elf: esp-idf/esp_event/libesp_event.a
wearable.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
wearable.elf: esp-idf/nvs_flash/libnvs_flash.a
wearable.elf: esp-idf/esp_wifi/libesp_wifi.a
wearable.elf: esp-idf/lwip/liblwip.a
wearable.elf: esp-idf/log/liblog.a
wearable.elf: esp-idf/heap/libheap.a
wearable.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
wearable.elf: esp-idf/driver/libdriver.a
wearable.elf: esp-idf/pthread/libpthread.a
wearable.elf: esp-idf/espcoredump/libespcoredump.a
wearable.elf: esp-idf/perfmon/libperfmon.a
wearable.elf: esp-idf/esp32/libesp32.a
wearable.elf: esp-idf/esp_common/libesp_common.a
wearable.elf: esp-idf/esp_timer/libesp_timer.a
wearable.elf: esp-idf/freertos/libfreertos.a
wearable.elf: esp-idf/newlib/libnewlib.a
wearable.elf: esp-idf/cxx/libcxx.a
wearable.elf: esp-idf/app_trace/libapp_trace.a
wearable.elf: esp-idf/nghttp/libnghttp.a
wearable.elf: esp-idf/esp-tls/libesp-tls.a
wearable.elf: esp-idf/tcp_transport/libtcp_transport.a
wearable.elf: esp-idf/esp_http_client/libesp_http_client.a
wearable.elf: esp-idf/esp_http_server/libesp_http_server.a
wearable.elf: esp-idf/ulp/libulp.a
wearable.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
wearable.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
wearable.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
wearable.elf: esp-idf/soc/soc/esp32/libsoc_esp32.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/libcoexist.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/libcore.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/libpp.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/librtc.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/libphy.a
wearable.elf: esp-idf/xtensa/libxtensa.a
wearable.elf: esp-idf/mbedtls/libmbedtls.a
wearable.elf: esp-idf/efuse/libefuse.a
wearable.elf: esp-idf/bootloader_support/libbootloader_support.a
wearable.elf: esp-idf/app_update/libapp_update.a
wearable.elf: esp-idf/esp_ipc/libesp_ipc.a
wearable.elf: esp-idf/spi_flash/libspi_flash.a
wearable.elf: esp-idf/esp_system/libesp_system.a
wearable.elf: esp-idf/soc/libsoc.a
wearable.elf: esp-idf/vfs/libvfs.a
wearable.elf: esp-idf/esp_eth/libesp_eth.a
wearable.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
wearable.elf: esp-idf/esp_netif/libesp_netif.a
wearable.elf: esp-idf/esp_event/libesp_event.a
wearable.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
wearable.elf: esp-idf/nvs_flash/libnvs_flash.a
wearable.elf: esp-idf/esp_wifi/libesp_wifi.a
wearable.elf: esp-idf/lwip/liblwip.a
wearable.elf: esp-idf/log/liblog.a
wearable.elf: esp-idf/heap/libheap.a
wearable.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
wearable.elf: esp-idf/driver/libdriver.a
wearable.elf: esp-idf/pthread/libpthread.a
wearable.elf: esp-idf/espcoredump/libespcoredump.a
wearable.elf: esp-idf/perfmon/libperfmon.a
wearable.elf: esp-idf/esp32/libesp32.a
wearable.elf: esp-idf/esp_common/libesp_common.a
wearable.elf: esp-idf/esp_timer/libesp_timer.a
wearable.elf: esp-idf/freertos/libfreertos.a
wearable.elf: esp-idf/newlib/libnewlib.a
wearable.elf: esp-idf/cxx/libcxx.a
wearable.elf: esp-idf/app_trace/libapp_trace.a
wearable.elf: esp-idf/nghttp/libnghttp.a
wearable.elf: esp-idf/esp-tls/libesp-tls.a
wearable.elf: esp-idf/tcp_transport/libtcp_transport.a
wearable.elf: esp-idf/esp_http_client/libesp_http_client.a
wearable.elf: esp-idf/esp_http_server/libesp_http_server.a
wearable.elf: esp-idf/ulp/libulp.a
wearable.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
wearable.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
wearable.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
wearable.elf: esp-idf/soc/soc/esp32/libsoc_esp32.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/libcoexist.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/libcore.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/libpp.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/librtc.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_wifi/lib/esp32/libphy.a
wearable.elf: /home/helos/esp/esp-idf/components/xtensa/esp32/libhal.a
wearable.elf: esp-idf/newlib/libnewlib.a
wearable.elf: esp-idf/pthread/libpthread.a
wearable.elf: esp-idf/app_trace/libapp_trace.a
wearable.elf: esp-idf/app_trace/libapp_trace.a
wearable.elf: /home/helos/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.newlib-time.ld
wearable.elf: /home/helos/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.ld
wearable.elf: /home/helos/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.libgcc.ld
wearable.elf: /home/helos/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.newlib-data.ld
wearable.elf: /home/helos/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.syscalls.ld
wearable.elf: /home/helos/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.newlib-funcs.ld
wearable.elf: esp-idf/esp32/esp32_out.ld
wearable.elf: esp-idf/esp32/ld/esp32.project.ld
wearable.elf: /home/helos/esp/esp-idf/components/esp32/ld/esp32.peripherals.ld
wearable.elf: CMakeFiles/wearable.elf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/helos/esp/esp-idf/wearable/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable wearable.elf"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wearable.elf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/wearable.elf.dir/build: wearable.elf

.PHONY : CMakeFiles/wearable.elf.dir/build

CMakeFiles/wearable.elf.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/wearable.elf.dir/cmake_clean.cmake
.PHONY : CMakeFiles/wearable.elf.dir/clean

CMakeFiles/wearable.elf.dir/depend: project_elf_src.c
	cd /home/helos/esp/esp-idf/wearable/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/helos/esp/esp-idf/wearable /home/helos/esp/esp-idf/wearable /home/helos/esp/esp-idf/wearable/build /home/helos/esp/esp-idf/wearable/build /home/helos/esp/esp-idf/wearable/build/CMakeFiles/wearable.elf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/wearable.elf.dir/depend

